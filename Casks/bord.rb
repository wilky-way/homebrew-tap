cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.2"
  sha256 arm: "d0fed7aab08e40dd51a00f51de3e9e92827d14c4ec876fb2fe0938a3c372a055", intel: "6ef8b89836d77ee9b87c3da854fe5ad145371cd1528452a11c1141e4a030af24"

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
