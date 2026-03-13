cask "claude-inspector" do
  version "1.1.3"

  on_arm do
    url "https://github.com/kangraemin/claude-inspector/releases/download/v#{version}/Claude-Inspector-#{version}-arm64.dmg"
    sha256 "8000a6ae54fe588b835ce0561eec0d930e4f736c15b0abd2ee5d66af660e9a56"
  end
  on_intel do
    url "https://github.com/kangraemin/claude-inspector/releases/download/v#{version}/Claude-Inspector-#{version}-x64.dmg"
    sha256 "136796b33117b0f627b152f74ad05e2fb13d7b40675693b2e6cc836efb6a2255"
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
