require "iprocessor/version"

module Iprocessor
  
  class CardProcessor
  
    include HTTParty
    
    format :json
    headers 'ContentType' => "application/octet-stream; charset=utf-8;"
    attr_accessor :base_url
  
    def initialize(username, password)
      @auth = {:username => username, :password => password}
      @base_url = 'http://cloudsdk.card-reader.com/CSSNService/CardProcessor/'
    end
    
    def read_license(img_byte, api, filter)
      options = {:body => img_byte, :basic_auth => @auth}
      url = @base_url + api + optionize(filter)
      self.class.post(url, options)
    end
    
    def optionize(filter)
      filter.join('/')
    end
  end
  
end
