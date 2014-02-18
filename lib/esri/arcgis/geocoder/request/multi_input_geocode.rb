module ESRI
  module ArcGIS
    module Geocoder
      class Request
        class MultiInputGeocode < Request

          # CONSTANTS

          PATH = "/arcgis/rest/services/World/GeocodeServer/findAddressCandidates".freeze

          # QUERY

          class Query < Request::Query

            # CONSTANTS

            COUNTRY_CODE = "USA".freeze
            OUT_FIELDS = "*".freeze

            # ATTRIBUTES

            attribute :Address, String
            attribute :Neighborhood, String
            attribute :City, String
            attribute :Subregion, String
            attribute :Region, String
            attribute :Postal, Integer
            attribute :PostalExt, Integer
            attribute :CountryCode, String, default: COUNTRY_CODE
            attribute :searchExtent, String
            attribute :outFields, String, default: OUT_FIELDS

          end

        end
      end
    end
  end
end
