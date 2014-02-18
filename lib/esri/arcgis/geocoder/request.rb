module ESRI
  module ArcGIS
    module Geocoder
      class Request

        # CONSTANTS

        HOST = "geocode.arcgis.com".freeze
        PATH = nil.freeze
        PORT = 80.freeze

        # INITIALIZER

        def initialize(parameters = {})
          @query = self.class::Query.new(parameters)
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

        attr_reader :query

        def host
          self.class::HOST
        end

        def path
          self.class::PATH
        end

        def port
          self.class::PORT
        end

        def url
          URI::HTTP.build(host: host, path: path, port: port, query: query.to_s)
        end

        def start!(&block)
          if block_given?
            Response.new Net::HTTP.start(url.host, url.port) {|http| yield http }
          end
        end

      end
    end
  end
end
