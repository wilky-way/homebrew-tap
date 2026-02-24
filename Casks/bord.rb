cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.3"
  sha256 arm: "df00e56d75ee6c7c37b4dcff16dcfd7a2f139decf005e628a2ca66e57693d406", intel: "fd07ea41a5ba7a615f057425b4e884aee84f51a3c85e4cb14b538c916d217a6f"

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
