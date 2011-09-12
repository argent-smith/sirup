module Sirup
  module SIP

    # SIP client implementation
    class Client
      attr_accessor :server, :login, :password
      attr_reader   :response

      def initialize
        @response = Response.new
      end

      def send_request req
        
      end
    end
  end
end
