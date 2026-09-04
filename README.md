# Patchdesk Homebrew tap

Installs [Patchdesk](https://github.com/kwanpham2195/patchdesk), a desktop pull request review workbench, as a Homebrew cask. Apple Silicon only.

## Install

Homebrew asks you to trust a tap that is not Homebrew's own before it loads casks from it.

```bash
brew trust --tap kwanpham2195/patchdesk
brew install --cask kwanpham2195/patchdesk/patchdesk
xattr -dr com.apple.quarantine /Applications/Patchdesk.app
```

The last line is needed because the app is not notarized. Without it macOS refuses to open the app.

## Update

```bash
brew upgrade --cask patchdesk
```

## Uninstall

```bash
brew uninstall --cask patchdesk
brew uninstall --cask --zap patchdesk   # also removes local data and logs
```

## Maintainers

Each Patchdesk release updates `Casks/patchdesk.rb`: `version` and the `sha256` of the release DMG. The release steps in the main repository's `CONTRIBUTING.md` cover this.
