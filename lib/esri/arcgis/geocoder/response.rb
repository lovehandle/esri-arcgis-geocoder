module ESRI
  module ArcGIS
    class Geocoder
      class Response

        # ERRORS

        class ParseError < RuntimeError; end

        # INITIALIZER

        def initialize(response)
          @response = response
        end

        # INSTANCE METHODS

        def status
          response.code
        end

        def body
          response.body
        end

        def to_hash
          begin
            JSON.parse(body)
          rescue
            raise ParseError, "unable to parse body"
          end
        end

        private

        attr_reader :response


      end
    end
  end
end
