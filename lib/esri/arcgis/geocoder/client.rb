module ESRI
  module ArcGIS
    class Geocoder
      class Client

        # CONSTANTS

        HOST = "geocode.arcgis.com".freeze
        PATH = "/arcgis/rest/services/World/GeocodeServer/find".freeze
        PORT = 80.freeze
        METHOD = "get".freeze

        # INCLUSIONS

        include Virtus.model

        # ATTRIBUTES

        attribute :parameters, Parameters

        # CLASS METHODS

        def self.perform(*args)
          new(*args).perform
        end

        # INSTANCE METHODS

        def perform
          Request.send(method, url)
        end

        private

        def method
          METHOD
        end

        def port
          PORT
        end

        def host
          HOST
        end

        def path
          PATH
        end

        def url
          URI::HTTP.build(host: host, path: path, port: port, query: parameters.to_s)
        end

      end
    end
  end
end
