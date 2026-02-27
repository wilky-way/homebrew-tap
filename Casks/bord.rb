cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.9"
  sha256 arm: "9c348ad5a322bf607c6d739b65f8614ccc400d0bf3eb26b196619e02fd78faea", intel: "4987ea6c938d62e18da8eff49c67b672fd0c29ca4cb29a51609244c92b3b1810"

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
