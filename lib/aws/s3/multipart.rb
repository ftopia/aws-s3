module AWS
  module S3
    class S3MultipartUpload < Base
      attr_reader :upload_id, :bucket, :key
      
      class << self
      end
      
      def initialize(options = {})
        @upload_id  = options[:upload_id]
        @bucket     = options[:bucket]
        @key        = options[:key]
        
        super
      end
      
      def upload_part(part_number, options = {})
        # If no data is given, then generate the necessary url/headers to make the upload
        if options[:data]
          # Do nothing for now
        else
          size = options[:size]
        end
        
        connection.request(verb, bucket, path, options, body, attempts, &block)
      end
    end
  end
end