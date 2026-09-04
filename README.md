# Patchdesk Homebrew tap

Installs [Patchdesk](https://github.com/kwanpham2195/patchdesk), a desktop pull request review workbench, as a Homebrew cask. Apple Silicon only.

## Install

Homebrew asks you to trust a tap that is not Homebrew's own before it loads casks from it.

```bash
brew trust --tap kwanpham2195/patchdesk
brew install --cask --no-quarantine kwanpham2195/patchdesk/patchdesk
```

`--no-quarantine` is needed because the app is not notarized. Without it macOS refuses to open the app until you clear the quarantine flag by hand.

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
