module ESRI
  module ArcGIS
    class Geocoder
      class Request

        # INITIALIZER

        def initialize(url)
          @url = url
        end

        # CLASS METHODS

        def self.get(*args)
          new(*args).get
        end

        # INSTANCE METHODS

        def get
          start! {|http| http.get(url.request_uri) }
        end

        private

        attr_reader :url

        def start!(&block)
          if block_given?
            Response.new Net::HTTP.start(url.host, url.port) {|http| yield http }
          end
        end

      end
    end
  end
end
