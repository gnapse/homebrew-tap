cask "pixamp" do
  version "1.6"
  sha256 "675a5f83b1273be7c2b310b49382778e978bac28b17a8a5bd911bbc0f9790d97"

  url "https://downloads.pixamp.app/Pixamp-#{version}.zip"
  name "Pixamp"
  desc "Music player for classic Winamp skins"
  homepage "https://pixamp.app/"

  livecheck do
    url "https://pixamp.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Pixamp.app"
  binary "#{appdir}/Pixamp.app/Contents/Helpers/pixamp"

  uninstall quit: "dev.ernesto.Pixamp"

  zap trash: [
    "~/Library/Application Support/Pixamp",
    "~/Library/Caches/dev.ernesto.Pixamp",
    "~/Library/Caches/Pixamp",
    "~/Library/HTTPStorages/dev.ernesto.Pixamp",
    "~/Library/Preferences/dev.ernesto.Pixamp.plist",
    "~/Library/Saved Application State/dev.ernesto.Pixamp.savedState",
  ]
end
