cask "ai-usage-bar" do
  version "1.4.0"
  sha256 "fa3107bff3e7f615b1d187a5fbfad7927768a9dd13ae5cfa3666e30a2c37cf19"

  url "https://github.com/hong-minji/ai-usage-bar/releases/download/v#{version}/AIUsageBar-#{version}-universal.zip"
  name "AI Usage Bar"
  desc "Menu bar display of remaining Claude, ChatGPT, Gemini and Antigravity quota"
  homepage "https://github.com/hong-minji/ai-usage-bar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "AIUsageBar.app"

  # Only `quit` here: every uninstall step also runs during `brew upgrade`, and
  # removing the login item there would silently turn off "Launch at login".
  uninstall quit: "com.local.ai-usage-bar"

  zap trash: [
    "~/Library/Application Support/AIUsageBar",
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.local.ai_usage_bar.gemini.json",
    "~/Library/LaunchAgents/com.local.ai-usage-bar.plist",
    "~/Library/Preferences/com.local.ai-usage-bar.plist",
  ]

  caveats <<~EOS
    AI Usage Bar is ad-hoc signed and not notarized, so macOS blocks the first
    launch. Open it once, then allow it under:
      System Settings > Privacy & Security > Open Anyway

    After an upgrade, reload the bundled Chrome extension at chrome://extensions/.

    If "Launch at login" is on, turn it off in the app's Settings before
    uninstalling, or remove everything with:
      brew uninstall --zap --cask ai-usage-bar
  EOS
end
