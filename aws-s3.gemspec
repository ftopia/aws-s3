# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "aws-s3"
  s.version = "0.6.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Fabien"]
  s.date = "2011-09-29"
  s.description = "AWS::S3 -- Support for Amazon S3's REST api"
  s.email = "fabien@ftopia.com"
  s.executables = ["s3sh", "setup.rb"]
  s.extra_rdoc_files = ["CHANGELOG", "COPYING", "README", "README.erb", "TODO", "bin/s3sh", "bin/setup.rb", "lib/aws/s3.rb", "lib/aws/s3/acl.rb", "lib/aws/s3/authentication.rb", "lib/aws/s3/base.rb", "lib/aws/s3/bittorrent.rb", "lib/aws/s3/bucket.rb", "lib/aws/s3/connection.rb", "lib/aws/s3/error.rb", "lib/aws/s3/exceptions.rb", "lib/aws/s3/extensions.rb", "lib/aws/s3/logging.rb", "lib/aws/s3/multipart.rb", "lib/aws/s3/object.rb", "lib/aws/s3/owner.rb", "lib/aws/s3/parsing.rb", "lib/aws/s3/response.rb", "lib/aws/s3/service.rb", "lib/aws/s3/version.rb"]
  s.files = ["CHANGELOG", "COPYING", "INSTALL", "Manifest", "README", "README.erb", "Rakefile", "TODO", "aws-s3.gemspec", "bin/s3sh", "bin/setup.rb", "lib/aws/s3.rb", "lib/aws/s3/acl.rb", "lib/aws/s3/authentication.rb", "lib/aws/s3/base.rb", "lib/aws/s3/bittorrent.rb", "lib/aws/s3/bucket.rb", "lib/aws/s3/connection.rb", "lib/aws/s3/error.rb", "lib/aws/s3/exceptions.rb", "lib/aws/s3/extensions.rb", "lib/aws/s3/logging.rb", "lib/aws/s3/multipart.rb", "lib/aws/s3/object.rb", "lib/aws/s3/owner.rb", "lib/aws/s3/parsing.rb", "lib/aws/s3/response.rb", "lib/aws/s3/service.rb", "lib/aws/s3/version.rb", "site/index.erb", "site/public/images/box-and-gem.gif", "site/public/images/favicon.ico", "site/public/ruby.css", "site/public/screen.css", "support/faster-xml-simple/COPYING", "support/faster-xml-simple/README", "support/faster-xml-simple/Rakefile", "support/faster-xml-simple/lib/faster_xml_simple.rb", "support/faster-xml-simple/test/fixtures/test-1.rails.yml", "support/faster-xml-simple/test/fixtures/test-1.xml", "support/faster-xml-simple/test/fixtures/test-1.yml", "support/faster-xml-simple/test/fixtures/test-2.rails.yml", "support/faster-xml-simple/test/fixtures/test-2.xml", "support/faster-xml-simple/test/fixtures/test-2.yml", "support/faster-xml-simple/test/fixtures/test-3.rails.yml", "support/faster-xml-simple/test/fixtures/test-3.xml", "support/faster-xml-simple/test/fixtures/test-3.yml", "support/faster-xml-simple/test/fixtures/test-4.rails.yml", "support/faster-xml-simple/test/fixtures/test-4.xml", "support/faster-xml-simple/test/fixtures/test-4.yml", "support/faster-xml-simple/test/fixtures/test-5.rails.yml", "support/faster-xml-simple/test/fixtures/test-5.xml", "support/faster-xml-simple/test/fixtures/test-5.yml", "support/faster-xml-simple/test/fixtures/test-6.rails.yml", "support/faster-xml-simple/test/fixtures/test-6.xml", "support/faster-xml-simple/test/fixtures/test-6.yml", "support/faster-xml-simple/test/fixtures/test-7.rails.yml", "support/faster-xml-simple/test/fixtures/test-7.xml", "support/faster-xml-simple/test/fixtures/test-7.yml", "support/faster-xml-simple/test/fixtures/test-8.rails.yml", "support/faster-xml-simple/test/fixtures/test-8.xml", "support/faster-xml-simple/test/fixtures/test-8.yml", "support/faster-xml-simple/test/regression_test.rb", "support/faster-xml-simple/test/test_helper.rb", "support/faster-xml-simple/test/xml_simple_comparison_test.rb", "support/rdoc/code_info.rb", "test/acl_test.rb", "test/authentication_test.rb", "test/base_test.rb", "test/bucket_test.rb", "test/connection_test.rb", "test/error_test.rb", "test/extensions_test.rb", "test/fixtures.rb", "test/fixtures/buckets.yml", "test/fixtures/errors.yml", "test/fixtures/headers.yml", "test/fixtures/logging.yml", "test/fixtures/loglines.yml", "test/fixtures/logs.yml", "test/fixtures/policies.yml", "test/logging_test.rb", "test/mocks/fake_response.rb", "test/object_test.rb", "test/parsing_test.rb", "test/remote/acl_test.rb", "test/remote/bittorrent_test.rb", "test/remote/bucket_test.rb", "test/remote/logging_test.rb", "test/remote/object_test.rb", "test/remote/test_file.data", "test/remote/test_helper.rb", "test/response_test.rb", "test/service_test.rb", "test/test_helper.rb"]
  s.homepage = "http://github.com/ftopia/aws-s3"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Aws-s3", "--main", "README"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "aws-s3"
  s.rubygems_version = "1.8.10"
  s.summary = "AWS::S3 -- Support for Amazon S3's REST api"
  s.test_files = ["test/acl_test.rb", "test/authentication_test.rb", "test/base_test.rb", "test/bucket_test.rb", "test/connection_test.rb", "test/error_test.rb", "test/extensions_test.rb", "test/logging_test.rb", "test/object_test.rb", "test/parsing_test.rb", "test/remote/acl_test.rb", "test/remote/bittorrent_test.rb", "test/remote/bucket_test.rb", "test/remote/logging_test.rb", "test/remote/object_test.rb", "test/remote/test_helper.rb", "test/response_test.rb", "test/service_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
