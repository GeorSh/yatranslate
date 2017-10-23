require 'yatranslate/gateway'
require 'yatranslate/version'

#module Yatranslate
  class Client
    
    #API_KEY = "trnsl.1.1.20170529T154416Z.047bb57fd7a8b3a1.97c5cf0ccade87d10fb983346cfb5703bf811b3e"
    #VERSION 1.5

    def initialize(api_key)
      @request = Yatranslate::Gateway.new
      @text = " "
      @params = {
        key: "#{api_key}"
      }
    end

    def submit(method, params={})
      @request.generate_request(method, @params.merge!(params))
      @request.send_request
    end

  end
#end
