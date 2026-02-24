cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.1"
  sha256 arm: "48b10b52f2e7123ce278724db8982cbe7ff0c4ba25084df7805d32170355ece3", intel: "a7b985bf0592717be4a48e5e0efc522854537ed5791c7f45c7da8f4fa0117cbc"

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
