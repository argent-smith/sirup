module Sirup
  module SIP
    # SIP session
    class Session
      attr_accessor :server, :login, :password

      def initialize
        @dialogue = {
          :message  => nil,
          :response => nil
        }
      end

      def send_message type, content = {}
        @dialogue[:message]  = Message.new type, content
        @dialogue[:response] = Response.new
      end

      def response
        @dialogue[:response]
      end
    end
  end
end
