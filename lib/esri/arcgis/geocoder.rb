require "json"
require "virtus"
require "net/http"
require "uri"

module ESRI
  module ArcGIS
    class Geocoder

      def self.perform(parameters)
        Client.perform(parameters: parameters)
      end

    end
  end
end

require "esri/arcgis/geocoder/client/parameters"
require "esri/arcgis/geocoder/client"
require "esri/arcgis/geocoder/request"
require "esri/arcgis/geocoder/response"
require "esri/arcgis/geocoder/version"
