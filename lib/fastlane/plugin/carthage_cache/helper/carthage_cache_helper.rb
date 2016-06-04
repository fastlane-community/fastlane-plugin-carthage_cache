module Fastlane
  module Helper
    class CarthageCacheHelper
      # class methods that you define here become available in your action
      # as `Helper::CarthageCacheHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the carthage_cache plugin helper!")
      end
    end
  end
end
