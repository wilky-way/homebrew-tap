cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.1"
  sha256 arm: "eef51ca07599b74f6638cbc2ddaf66a636066ce2e573e42a8a01bfc276bc333d", intel: "714af5c841a2804c44c058f7c637efd93f343b5782f5557de2636a5147804e1e"

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
