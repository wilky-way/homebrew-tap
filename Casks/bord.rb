cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.6"
  sha256 arm: "494efcb309c57cd50d9eda9f4c40cdc73d01ee13601c77fb47c1db6d50c7273a", intel: "881307231c7f7d4373c68e573e1f95840f35539c1486972a98cc959d48214db3"

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
