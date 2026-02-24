cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.1"
  sha256 arm: "f3eb204e8b350d578d09a160b1597e94d60eda727904f756a14cd8d1295f5c16", intel: "376feab2ec4f4483e272da343ece532704baca2eacbbf3ac9b716398d91f19e7"

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
