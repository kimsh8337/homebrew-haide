cask "haide" do
  version "1.0.3"
  sha256 "d68b35029e2d368648f124859126fb3627adbb4f05508aac229258946544810d"

  url "https://github.com/kimsh8337/haide-releases/releases/download/v#{version}/Haide-#{version}-arm64.dmg"
  name "Haide"
  desc "Agent development environment and IDE for Claude Code and Codex"
  homepage "https://github.com/kimsh8337/haide-releases"

  depends_on arch: :arm64
  depends_on :macos

  app "Haide.app"
  binary "#{appdir}/Haide.app/Contents/Resources/bin/haide"

  zap trash: [
    "~/.haide",
    "~/Library/Application Support/haide",
    "~/Library/Preferences/io.github.kimsh8337.haide.plist",
    "~/Library/Saved Application State/io.github.kimsh8337.haide.savedState",
  ]

  caveats <<~EOS
    Haide is not signed with an Apple Developer ID yet.
    If macOS blocks the first launch, see:
      https://github.com/kimsh8337/haide-releases#처음-열-때-경고

    Quit Haide before `brew upgrade --cask haide`.
  EOS
end
