cask "bord" do
  arch arm: "aarch64", intel: "x64"
  version "5.0.5"
  sha256 arm: "a3b7a037ee73af8257844fe6709e1cea708991be4b2476cc71bff786c658f1c3", intel: "da5964a3ac3b4411899a07dbe5aac80ad2928f7f314e2e3693f64938edee3754"

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
