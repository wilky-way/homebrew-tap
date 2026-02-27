cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.10"
  sha256 arm: "929b4c5bb67890a4a9f84747c60addf01081871c936fc7eba49f5aad0f39edab", intel: "d59d89ded8003d4dff81d29aabf6fd4d4d71c4ca7bd2178eb7a3c72023bddf13"

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
