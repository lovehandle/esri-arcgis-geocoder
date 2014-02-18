# ESRI::ArcGIS::Geocoder

A Ruby wrapper to the ESRI ArcGIS Geocoder API

## Installation

Add this line to your application's Gemfile:

    gem 'esri-arcgis-geocoder', require: "esri/arcgis/geocoder"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install esri-arcgis-geocoder

## Usage

Set your ESRI ArcGIS Geocoder token:

```ruby
  ESRI.configure do |config|
    config.token = "ABC123"
  end
```

Geocode with a single input field:

```ruby
response = ESRI::ArcGIS::Geocoder.geocode_single_input(text: "350 5th Ave, New York, NY 10118")

response.status
#=> 200

response.body
#=> "{\n \"spatialReference\": {\n  \"wkid\": 4326,\n  \"latestWkid\": 4326\n },\n \"locations\": [\n  {\n   \"name\": \"350 5th Ave, New York, New York, 10118\",\n   \"extent\": {\n    \"xmin\": -73.984780999999998,\n    \"ymin\": 40.748179999999998,\n    \"xmax\": -73.984460999999996,\n    \"ymax\": 40.748539999999998\n   },\n   \"feature\": {\n    \"geometry\": {\n     \"x\": -73.984647736702868,\n     \"y\": 40.748377101023493\n    },\n    \"attributes\": {\n     \"Loc_name\": \"USA.StreetAddress\",\n     \"Score\": 100,\n     \"Match_addr\": \"350 5th Ave, New York, New York, 10118\",\n     \"Addr_type\": \"StreetAddress\",\n     \"Type\": \"\",\n     \"PlaceName\": \"\",\n     \"Place_addr\": \"\",\n     \"Phone\": \"\",\n     \"URL\": \"\",\n     \"Rank\": \"\",\n     \"AddBldg\": \"\",\n     \"AddNum\": \"\",\n     \"AddNumFrom\": \"350\",\n     \"AddNumTo\": \"350\",\n     \"Side\": \"L\",\n     \"StPreDir\": \"\",\n     \"StPreType\": \"\",\n     \"StName\": \"5th\",\n     \"StType\": \"Ave\",\n     \"StDir\": \"\",\n     \"StAddr\": \"\",\n     \"Nbrhd\": \"\",\n     \"City\": \"New York\",\n     \"Subregion\": \"\",\n     \"Region\": \"New York\",\n     \"Postal\": \"10118\",\n     \"PostalExt\": \"\",\n     \"Country\": \"USA\",\n     \"LangCode\": \"ENG\",\n     \"Distance\": 0,\n     \"X\": -73.984649000000005,\n     \"Y\": 40.748376999999998,\n     \"DisplayX\": -73.984649000000005,\n     \"DisplayY\": 40.748376999999998,\n     \"Xmin\": -73.984780999999998,\n     \"Xmax\": -73.984460999999996,\n     \"Ymin\": 40.748179999999998,\n     \"Ymax\": 40.748539999999998\n    }\n   }\n  }\n ]\n}"

response.to_hash
#=> {"spatialReference"=>{"wkid"=>4326, "latestWkid"=>4326}, "locations"=>[{"name"=>"350 5th Ave, New York, New York, 10118", "extent"=>{"xmin"=>-73.984781, "ymin"=>40.74818, "xmax"=>-73.984461, "ymax"=>40.74854}, "feature"=>{"geometry"=>{"x"=>-73.98464773670287, "y"=>40.74837710102349}, "attributes"=>{"Loc_name"=>"USA.StreetAddress", "Score"=>100, "Match_addr"=>"350 5th Ave, New York, New York, 10118", "Addr_type"=>"StreetAddress", "Type"=>"", "PlaceName"=>"", "Place_addr"=>"", "Phone"=>"", "URL"=>"", "Rank"=>"", "AddBldg"=>"", "AddNum"=>"", "AddNumFrom"=>"350", "AddNumTo"=>"350", "Side"=>"L", "StPreDir"=>"", "StPreType"=>"", "StName"=>"5th", "StType"=>"Ave", "StDir"=>"", "StAddr"=>"", "Nbrhd"=>"", "City"=>"New York", "Subregion"=>"", "Region"=>"New York", "Postal"=>"10118", "PostalExt"=>"", "Country"=>"USA", "LangCode"=>"ENG", "Distance"=>0, "X"=>-73.984649, "Y"=>40.748377, "DisplayX"=>-73.984649, "DisplayY"=>40.748377, "Xmin"=>-73.984781, "Xmax"=>-73.984461, "Ymin"=>40.74818, "Ymax"=>40.74854}}}]}
```

Geocode a with multiple input fields:

```ruby
response = ESRI::ArcGIS::Geocoder.geocode_multi_input(Address: "350 5th Ave", City: "New York", State: "NY", Postal: "10118")

response.status
#=> 200

response.body
#=> "{\n \"spatialReference\": {\n  \"wkid\": 4326,\n  \"latestWkid\": 4326\n },\n \"locations\": [\n  {\n   \"name\": \"350 5th Ave, New York, New York, 10118\",\n   \"extent\": {\n    \"xmin\": -73.984780999999998,\n    \"ymin\": 40.748179999999998,\n    \"xmax\": -73.984460999999996,\n    \"ymax\": 40.748539999999998\n   },\n   \"feature\": {\n    \"geometry\": {\n     \"x\": -73.984647736702868,\n     \"y\": 40.748377101023493\n    },\n    \"attributes\": {\n     \"Loc_name\": \"USA.StreetAddress\",\n     \"Score\": 100,\n     \"Match_addr\": \"350 5th Ave, New York, New York, 10118\",\n     \"Addr_type\": \"StreetAddress\",\n     \"Type\": \"\",\n     \"PlaceName\": \"\",\n     \"Place_addr\": \"\",\n     \"Phone\": \"\",\n     \"URL\": \"\",\n     \"Rank\": \"\",\n     \"AddBldg\": \"\",\n     \"AddNum\": \"\",\n     \"AddNumFrom\": \"350\",\n     \"AddNumTo\": \"350\",\n     \"Side\": \"L\",\n     \"StPreDir\": \"\",\n     \"StPreType\": \"\",\n     \"StName\": \"5th\",\n     \"StType\": \"Ave\",\n     \"StDir\": \"\",\n     \"StAddr\": \"\",\n     \"Nbrhd\": \"\",\n     \"City\": \"New York\",\n     \"Subregion\": \"\",\n     \"Region\": \"New York\",\n     \"Postal\": \"10118\",\n     \"PostalExt\": \"\",\n     \"Country\": \"USA\",\n     \"LangCode\": \"ENG\",\n     \"Distance\": 0,\n     \"X\": -73.984649000000005,\n     \"Y\": 40.748376999999998,\n     \"DisplayX\": -73.984649000000005,\n     \"DisplayY\": 40.748376999999998,\n     \"Xmin\": -73.984780999999998,\n     \"Xmax\": -73.984460999999996,\n     \"Ymin\": 40.748179999999998,\n     \"Ymax\": 40.748539999999998\n    }\n   }\n  }\n ]\n}"

response.to_hash
#=> {"spatialReference"=>{"wkid"=>4326, "latestWkid"=>4326}, "locations"=>[{"name"=>"350 5th Ave, New York, New York, 10118", "extent"=>{"xmin"=>-73.984781, "ymin"=>40.74818, "xmax"=>-73.984461, "ymax"=>40.74854}, "feature"=>{"geometry"=>{"x"=>-73.98464773670287, "y"=>40.74837710102349}, "attributes"=>{"Loc_name"=>"USA.StreetAddress", "Score"=>100, "Match_addr"=>"350 5th Ave, New York, New York, 10118", "Addr_type"=>"StreetAddress", "Type"=>"", "PlaceName"=>"", "Place_addr"=>"", "Phone"=>"", "URL"=>"", "Rank"=>"", "AddBldg"=>"", "AddNum"=>"", "AddNumFrom"=>"350", "AddNumTo"=>"350", "Side"=>"L", "StPreDir"=>"", "StPreType"=>"", "StName"=>"5th", "StType"=>"Ave", "StDir"=>"", "StAddr"=>"", "Nbrhd"=>"", "City"=>"New York", "Subregion"=>"", "Region"=>"New York", "Postal"=>"10118", "PostalExt"=>"", "Country"=>"USA", "LangCode"=>"ENG", "Distance"=>0, "X"=>-73.984649, "Y"=>40.748377, "DisplayX"=>-73.984649, "DisplayY"=>40.748377, "Xmin"=>-73.984781, "Xmax"=>-73.984461, "Ymin"=>40.74818, "Ymax"=>40.74854}}}]}
```

Reverse geocode a lat/lng:

```
response = ESRI::ArcGIS::Geocoder.reverse_geocode(location: "-73.985833,40.748417")

response.status
#=> 200

response.body
#=> "{\n \"spatialReference\": {\n  \"wkid\": 4326,\n  \"latestWkid\": 4326\n },\n \"locations\": [\n  {\n   \"name\": \"350 5th Ave, New York, New York, 10118\",\n   \"extent\": {\n    \"xmin\": -73.984780999999998,\n    \"ymin\": 40.748179999999998,\n    \"xmax\": -73.984460999999996,\n    \"ymax\": 40.748539999999998\n   },\n   \"feature\": {\n    \"geometry\": {\n     \"x\": -73.984647736702868,\n     \"y\": 40.748377101023493\n    },\n    \"attributes\": {\n     \"Loc_name\": \"USA.StreetAddress\",\n     \"Score\": 100,\n     \"Match_addr\": \"350 5th Ave, New York, New York, 10118\",\n     \"Addr_type\": \"StreetAddress\",\n     \"Type\": \"\",\n     \"PlaceName\": \"\",\n     \"Place_addr\": \"\",\n     \"Phone\": \"\",\n     \"URL\": \"\",\n     \"Rank\": \"\",\n     \"AddBldg\": \"\",\n     \"AddNum\": \"\",\n     \"AddNumFrom\": \"350\",\n     \"AddNumTo\": \"350\",\n     \"Side\": \"L\",\n     \"StPreDir\": \"\",\n     \"StPreType\": \"\",\n     \"StName\": \"5th\",\n     \"StType\": \"Ave\",\n     \"StDir\": \"\",\n     \"StAddr\": \"\",\n     \"Nbrhd\": \"\",\n     \"City\": \"New York\",\n     \"Subregion\": \"\",\n     \"Region\": \"New York\",\n     \"Postal\": \"10118\",\n     \"PostalExt\": \"\",\n     \"Country\": \"USA\",\n     \"LangCode\": \"ENG\",\n     \"Distance\": 0,\n     \"X\": -73.984649000000005,\n     \"Y\": 40.748376999999998,\n     \"DisplayX\": -73.984649000000005,\n     \"DisplayY\": 40.748376999999998,\n     \"Xmin\": -73.984780999999998,\n     \"Xmax\": -73.984460999999996,\n     \"Ymin\": 40.748179999999998,\n     \"Ymax\": 40.748539999999998\n    }\n   }\n  }\n ]\n}"

response.to_hash
#=> {"spatialReference"=>{"wkid"=>4326, "latestWkid"=>4326}, "locations"=>[{"name"=>"350 5th Ave, New York, New York, 10118", "extent"=>{"xmin"=>-73.984781, "ymin"=>40.74818, "xmax"=>-73.984461, "ymax"=>40.74854}, "feature"=>{"geometry"=>{"x"=>-73.98464773670287, "y"=>40.74837710102349}, "attributes"=>{"Loc_name"=>"USA.StreetAddress", "Score"=>100, "Match_addr"=>"350 5th Ave, New York, New York, 10118", "Addr_type"=>"StreetAddress", "Type"=>"", "PlaceName"=>"", "Place_addr"=>"", "Phone"=>"", "URL"=>"", "Rank"=>"", "AddBldg"=>"", "AddNum"=>"", "AddNumFrom"=>"350", "AddNumTo"=>"350", "Side"=>"L", "StPreDir"=>"", "StPreType"=>"", "StName"=>"5th", "StType"=>"Ave", "StDir"=>"", "StAddr"=>"", "Nbrhd"=>"", "City"=>"New York", "Subregion"=>"", "Region"=>"New York", "Postal"=>"10118", "PostalExt"=>"", "Country"=>"USA", "LangCode"=>"ENG", "Distance"=>0, "X"=>-73.984649, "Y"=>40.748377, "DisplayX"=>-73.984649, "DisplayY"=>40.748377, "Xmin"=>-73.984781, "Xmax"=>-73.984461, "Ymin"=>40.74818, "Ymax"=>40.74854}}}]}

```

## Contributing

1. Fork it ( http://github.com/rclosner/esri-arcgis-geocoder/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
