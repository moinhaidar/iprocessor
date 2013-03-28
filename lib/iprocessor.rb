require 'iprocessor/version'
require 'iprocessor/conf'
require 'httparty'

module Iprocessor
  
  class CardProcessor
  
    include HTTParty
    
    format :json
    headers 'ContentType' => "application/octet-stream; charset=utf-8;"
    #attr_accessor :base_url
  
    def initialize(username, password)
      @auth = {:username => username, :password => password}
      @base_url = Iprocessor::BASE_URL
    end
    
    def read_license(img_byte, action, filter)
      options = {:body => img_byte, :basic_auth => @auth}
      url = @base_url + clean(action) + optionize(filter)
      self.class.post(url, options)
    end
    
    def optionize(filter)
      filter.join('/')
    end
    
    def clean(action)
      action.present? ? (action.chomp.gsub('/', '').insert(0,'/').insert(-1,'/')) : ''
    end
    
  end
  
end
