module ESRI

  # CLASS METHODS

  def self.configure(&block)
    yield self if block_given?
  end

  class << self
    attr_accessor :arcgis_geocoder_token
  end

end
