describe Fastlane::Actions::CarthageCacheInstallAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The carthage_cache plugin is working!")

      Fastlane::Actions::CarthageCacheInstallAction.run(nil)
    end
  end
end
