cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "0.6.0"
  sha256 arm: "00b661b391a67bbfc21bde4e1a40c388a8c61c89f6b0bff0273eb90c1f9e62ea", intel: "48e4ee16fea722841ff52cd2a6d2ef1b5d97ee3a152cd34d5504055e4561481b"

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
