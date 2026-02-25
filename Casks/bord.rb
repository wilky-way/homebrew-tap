cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.4"
  sha256 arm: "0a8214a9114ca2eb8ed7e4b1478e5bbc03e5532bb785cde5d37d93d36fddae6b", intel: "f2f9894b4cfc2d7b6b326523fd4bf6e400bd27f249ce1cf13135f06b61b337ee"

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
