cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.7"
  sha256 arm: "9c916ac5aaa9ce7232775f958d91ac571ff717324edb8e9ec15031b7e639e04f", intel: "1bd6b8746a352cbecefdf9c36db49fe0d31c8604539ae62b3277ab47b6a23f43"

  url "https://github.com/wilky-way/bord/releases/download/v#{version}/bord_#{version}_#{arch}.dmg"

  name "Bord"
  desc "Workspace-scoped terminal manager with tiling layout and git integration"
  homepage "https://github.com/wilky-way/bord"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "bord.app"
end
