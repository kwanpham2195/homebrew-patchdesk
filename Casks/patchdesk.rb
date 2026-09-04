cask "patchdesk" do
  version "0.0.4"
  sha256 "f790f9fe02e871b4656b8e21b56e78a908ff20e6657d0c216bc8dd23d9a4278b"

  url "https://github.com/kwanpham2195/patchdesk/releases/download/v#{version}/Patchdesk-#{version}-arm64.dmg",
      verified: "github.com/kwanpham2195/patchdesk/"
  name "Patchdesk"
  desc "Desktop pull request review workbench with model-run Insights"
  homepage "https://github.com/kwanpham2195/patchdesk"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Patchdesk.app"

  # The build is ad-hoc signed, so Gatekeeper blocks the quarantined copy until the flag is cleared.
  caveats do
    <<~EOS
      Patchdesk is not notarized. Before the first launch run:
        xattr -dr com.apple.quarantine /Applications/Patchdesk.app
    EOS
  end

  zap trash: [
    "~/.local/share/patchdesk",
    "~/Library/Application Support/Patchdesk",
    "~/Library/Logs/Patchdesk",
    "~/Library/Preferences/com.centraldigital.patchdesk.plist",
    "~/Library/Saved Application State/com.centraldigital.patchdesk.savedState",
  ]
end
