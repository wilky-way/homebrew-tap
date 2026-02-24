cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "0.4.4"
  sha256 arm: "c2d900d87b6e2a63d48572e7c4aaa728a2b95f18a76aa2f858d83d30df8a5cdb", intel: "a75a6792e1ea86d68c0d7dfc0d9bb8917fcd8885cf7203b46109ab2d4477a19f"

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
