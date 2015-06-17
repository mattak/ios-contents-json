require "ios/contents/json/version"
require 'json'

module Ios
  module Contents
    module Json
      class << self
        def load(file)
          data = File.open(file).read
          JSON.parse(data)
        end

        def save(file, json)
          data = JSON.pretty_generate(json)
          File.open(file, "w").write(data)
        end

        def convert(json)
          image = json["images"][0]
          image.delete("scale")
          json["images"] = [image]
          json
        end

        def run(file)
          json = self.load(file)
          json = self.convert(json)
          self.save(file, json)
        end
      end
    end
  end
end
