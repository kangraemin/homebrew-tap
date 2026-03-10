cask "claude-inspector" do
  version "1.1.2"

  on_arm do
    url "https://github.com/kangraemin/claude-inspector/releases/download/v#{version}/Claude-Inspector-#{version}-arm64.dmg"
    sha256 "b6bdf3a08b4664488fa2233bb347642211330e709fcf2f4a77373e8f1d4766c4"
  end
  on_intel do
    url "https://github.com/kangraemin/claude-inspector/releases/download/v#{version}/Claude-Inspector-#{version}-x64.dmg"
    sha256 "dd828802dbac6789578c4bc4a906d0b7eec2d6793e1cebc9fadc815f08919d27"
  end

  name "Claude Inspector"
  desc "Claude Code Prompt Mechanism Visualizer"
  homepage "https://github.com/kangraemin/claude-inspector"
  app "Claude Inspector.app"

  zap trash: [
    "~/Library/Application Support/Claude Inspector",
    "~/Library/Preferences/com.claudeinspector.app.plist",
    "~/Library/Caches/com.claudeinspector.app",
  ]
end
