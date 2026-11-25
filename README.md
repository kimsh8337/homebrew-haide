# homebrew-haide

Homebrew tap for [Haide](https://github.com/kimsh8337/haide-releases) (Apple Silicon Mac).

```bash
brew tap kimsh8337/haide
brew trust kimsh8337/haide                 # Homebrew asks you to trust third-party taps once
brew install --cask kimsh8337/haide/haide   # install (also puts the `haide` CLI on PATH)
brew upgrade --cask haide                   # update — quit Haide first
brew uninstall --cask haide                 # remove (add --zap to also delete ~/.haide)
```
