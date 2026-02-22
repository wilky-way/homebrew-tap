cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "0.3.0"
  sha256 arm: "f316c8f818a980b69dfe812e68dc8c60357703cb7b44c19c9e88b6ba455f1bde",
         intel: "c1fdcd8b8bf3e06a2bbf7fab118c9d004053daa20ad6d517130e7a0b0933ae74"

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
