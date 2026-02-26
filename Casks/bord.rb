cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.8"
  sha256 arm: "a22a666942cee7f07d27cbe0f15b7eca3c07fe801c0d20cc506cddea7b1f9ded", intel: "88755dc275e97b3dcc24745b29840326f8b67854111de05c56aca61e0b9c1c8f"

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
