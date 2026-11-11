cask "senrelay" do
  version "1.0.0-beta.1"
  sha256 "ecba968a3fb2618cede526255ef26afdee4b28a7e0de3376527960d2556c3bea"

  url "https://github.com/qingsongcui/ContextCore/releases/download/v#{version}/Senrelay-macOS.zip",
      verified: "github.com/qingsongcui/ContextCore/"
  name "Senrelay"
  name "续境"
  desc "Local-first macOS multi-Agent conversation relay, persistent memory, and host workbench"
  homepage "https://senrelay.com/"

  livecheck do
    url :url
    strategy :github_releases do |json, regex|
      json.map do |release|
        next if release["draft"]

        match = release["tag_name"]&.match(regex)
        next if match.nil?

        match[1]
      end
    end
    regex(/^v?(\d+(?:\.\d+)+(?:-beta\.\d+)?)$/i)
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Senrelay.app"

  zap trash: [
    "~/Library/Application Support/ContextCore",
    "~/Library/Logs/Senrelay",
  ]

  caveats <<~EOS
    Senrelay Public Beta uses local ad-hoc signing (not yet Apple notarized).
    Before first launch, clear the download quarantine attribute:
      xattr -cr /Applications/Senrelay.app

    Setup Guide (中文): https://senrelay.com/guide.html
    Setup Guide (EN):   https://senrelay.com/en/guide.html
  EOS
end
