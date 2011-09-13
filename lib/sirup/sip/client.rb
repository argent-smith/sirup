module Sirup
  module SIP

    # SIP client implementation
    class Client

      # Reads array of Sessions
      attr_reader :sessions

      def initialize
        @sessions = []
      end

      def new_session
        @sessions << s = Session.new
        s
      end
    end
  end
end
