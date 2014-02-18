module ESRI

  # CLASS METHODS

  def self.configure(&block)
    yield self if block_given?
  end

  class << self
    attr_accessor :token
  end

end

require "esri/arcgis"
require "esri/arcgis/geocoder"

