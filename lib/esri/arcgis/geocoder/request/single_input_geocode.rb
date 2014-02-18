module ESRI
  module ArcGIS
    module Geocoder
      class Request
        class SingleInputGeocode < Request

          # CONSTANTS

          PATH = "/arcgis/rest/services/World/GeocodeServer/find".freeze

          # QUERY

          class Query < Request::Query

            # CONSTANTS

            SOURCE_COUNTRY = "USA".freeze
            OUT_FIELDS = "*".freeze

            # ATTRIBUTES

            attribute :text, String
            attribute :sourceCountry, String, default: SOURCE_COUNTRY
            attribute :bbox, String
            attribute :outFields, String, default: OUT_FIELDS
            attribute :maxLocations, Integer

          end

        end
      end
    end
  end
end
