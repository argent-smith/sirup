module Sirup
  module SIP

    # SIP server response
    class Response
      attr_reader :code

      def initialize
        @code = 200
      end
    end
  end
end
