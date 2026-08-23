[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

# homebrew-versatiles

[Homebrew](https://brew.sh) packages for
[versatiles](https://github.com/versatiles-org/versatiles-rs), the command line tool, and
[VersaTiles Studio](https://github.com/versatiles-org/versatiles-studio), the desktop application.

## Install

```bash
brew tap versatiles-org/versatiles
brew trust versatiles-org/versatiles
```

The command line tool:

```bash
brew install versatiles
```

The desktop application (macOS only):

```bash
brew install --cask versatiles-studio
```

**Studio is not notarised yet**, so macOS refuses to open it the first time. `brew install` prints
how to get past it, and so does the
[release page](https://github.com/versatiles-org/versatiles-studio/releases/latest).

## Upgrade

```bash
brew update
brew upgrade versatiles
brew upgrade --cask versatiles-studio
```

## How these are kept current

Neither file is edited by hand. `bin/make_formula.sh` and `bin/make_cask.sh` read the latest release
of their own repository — asset names, versions and checksums — and rewrite `Formula/` or `Casks/`.
Each source repository triggers the matching workflow here when it publishes a release.
