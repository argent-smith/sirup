$:.unshift File.dirname __FILE__
require 'response'

module Sirup
  module SIP

    # SIP client implementation
    class Client
      attr_accessor :server, :login, :password
      attr_reader   :response

      def initialize
        @response = Response.new
      end

      def sendRequest req
        
      end
    end
  end
end
