module AWS
  module S3
    class S3MultipartUpload < Base
      attr_reader :upload_id, :bucket, :key
      
      PartNumberRange = 1..10000
      
      class << self
      end
      
      def initialize(options = {})
        @upload_id  = options[:upload_id]
        @bucket     = options[:bucket] || connection.options[:bucket]
        @key        = options[:key]
        
        super
      end
      
      def upload_part(part_number, options = {})
        raise "part_number is not a number in the 1-10000 range" unless PartNumberRange.include?(part_number)
        
        path = AWS::S3::Connection.prepare_path("#{S3Object.path!(self.key, options)}?partNumber=#{part_number}&uploadId=#{self.upload_id}")

        # if no data is given, then generate the necessary url/headers to make the upload
        if options[:data]
          self.class.put self.bucket, path, {}, options[:data]
        else
          # generate path and request
          request = Net::HTTP::Put.new(path)
          
          # tuning request
          request['Host']           = "#{self.bucket}.#{DEFAULT_HOST}"
          request['Content-Length'] = options[:size]
          request['Authorization']  = Authentication::Header.new( request,
                                                                  connection.access_key_id,
                                                                  connection.secret_access_key,
                                                                  :bucket => self.bucket )
          
          # leave the rest to the caller
          return request
        end
        
      end
      
      def complete(etags)
        raise "etags are supposed to be a hash" unless etags.is_a?(Hash)
        
        path  = "#{S3Object.path!(self.key)}?uploadId=#{self.upload_id}"
        xml   = CompleteBuilder.new(etags).to_s
        
        self.class.post self.bucket, path, {}, xml
      end
      
      class CompleteBuilder < XmlGenerator #:nodoc:
        attr_reader :etags
    
        def initialize(etags)
          @etags = etags
          super()
        end
    
        def build
          xml.CompleteMultipartUpload do
            self.etags.each do |part_number, etag|
              xml.Part do
                xml.PartNumber  part_number
                xml.ETag        etag
              end
            end
          end
        end
      end
      
    end
  end
end