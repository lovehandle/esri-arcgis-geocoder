require "json"
require "virtus"
require "net/http"
require "uri"

module ESRI
  module ArcGIS
    module Geocoder

      # CLASS METHODS

      def self.geocode_single_input(*args)
        Request::SingleInputGeocode.get(*args)
      end

      def self.geocode_multi_input(*args)
        Request::MultiInputGeocode.get(*args)
      end

      def self.reverse_geocode(*args)
        Request::ReverseGeocode.get(*args)
      end

    end
  end
end

require "esri/arcgis/geocoder/request"
require "esri/arcgis/geocoder/request/query"
require "esri/arcgis/geocoder/request/single_input_geocode"
require "esri/arcgis/geocoder/request/multi_input_geocode"
require "esri/arcgis/geocoder/request/reverse_geocode"
require "esri/arcgis/geocoder/response"
require "esri/arcgis/geocoder/version"
