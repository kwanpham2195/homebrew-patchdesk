cask "patchdesk" do
  version "0.0.18"
  sha256 "dc9f09687eafb1d872be37fe7640a63134ae755cc35b964e1be8d3cf1d7abe89"

  url "https://github.com/kwanpham2195/patchdesk/releases/download/v#{version}/Patchdesk-#{version}-arm64.dmg"
  name "Patchdesk"
  desc "Desktop pull request review workbench with model-run Insights"
  homepage "https://github.com/kwanpham2195/patchdesk"

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Patchdesk.app"
  binary "#{appdir}/Patchdesk.app/Contents/Resources/bin/patchdesk"

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
    "~/Library/Preferences/io.github.kwanpham2195.patchdesk.plist",
    "~/Library/Saved Application State/io.github.kwanpham2195.patchdesk.savedState",
  ]
end
