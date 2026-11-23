cask "pixamp" do
  version "1.7"
  sha256 "8a143de90dc56e7dc585caadeaf92cf3f179f7397bc55a88f5093c5855f246da"

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
