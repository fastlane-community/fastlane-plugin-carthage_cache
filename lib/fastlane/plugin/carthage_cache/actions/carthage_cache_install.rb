module Fastlane
  module Actions
    class CarthageCacheInstallAction < Action
      def self.run(params)
        UI.message("Downloading Carthage cache from Amazon S3...")
        sh "bundle exec carthage_cache install --bucket-name #{params[:bucket]}" 
      end

      def self.description
        %q{Download Carthage cache from Amazon S3}
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
