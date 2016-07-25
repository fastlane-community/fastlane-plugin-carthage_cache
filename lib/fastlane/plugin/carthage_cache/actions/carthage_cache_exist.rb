module Fastlane
  module Actions
    class CarthageCacheExistAction < Action
      def self.run(params)
        UI.message("Checking Amazon S3 for matching Carthage cache...")
        check = `bundle exec carthage_cache exist --bucket-name #{params[:bucket]} -s 2>&1`.chomp
        check == "true"
      end

      def self.description
        %q{Check if Carthage cache exists for Cartfile.resolved in Amazon S3}
      end

      def self.authors
        [%q{bfcrampton}]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :bucket,
                                  env_name: "CARTHAGE_CACHE_BUCKET",
                               description: "Amazon S3 bucket name which caches your Carthage build",
                                  optional: false,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        [:ios, :mac, :tvos, :watchos].include?(platform)
      end
    end
  end
end
