cask "pixamp" do
  version "1.1"
  sha256 "7d7bcea26b76a561f9a31e2d8701cdfe5c09c198199c7607e60b75c214e3e982"

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
