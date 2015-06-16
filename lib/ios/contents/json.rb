require "ios/contents/json/version"

module Ios
  module Contents
    module Json
      def load(file)
        data = File.open(file).read
        JSON.parse(data)
      end

      def save(file, json)
        data = json.to_json
        File.open(file, "w").write(data)
      end

      def convert(json)
        image = json["images"][0]
        image.delete(scale)
        json["images"] = [image]
        json
      end

      def run(file)
        json = load(file)
        json = convert(json)
        save(file, json)
      end
    end
  end
end
