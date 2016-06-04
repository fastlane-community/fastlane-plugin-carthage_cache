module Fastlane
  module Actions
    class CarthageCachePublishAction < Action
      def self.run(params)
        UI.message("Uploading Carthage cache to Amazon S3...")
        sh "bundle exec carthage_cache publish --bucket-name #{params[:bucket]}" 
      end

      def self.description
        %q{Upload Carthage cache to Amazon S3}
      end

      def self.authors
        [%q{thii}]
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
