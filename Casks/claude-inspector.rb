cask "claude-inspector" do
  version "1.1.3"

  on_arm do
    url "https://github.com/kangraemin/claude-inspector/releases/download/v#{version}/Claude-Inspector-#{version}-arm64.dmg"
    sha256 "8589a48dffbaf79e699ace7d7120610354adf4c15dbbd4a40c825ca465a397eb"
  end
  on_intel do
    url "https://github.com/kangraemin/claude-inspector/releases/download/v#{version}/Claude-Inspector-#{version}-x64.dmg"
    sha256 "4e7ff80502e7dbc9891d7fefe4df6b4db593cb7d6419fac73859edafdf3f69f9"
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
