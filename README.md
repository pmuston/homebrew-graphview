# homebrew-graphview

Homebrew tap for [graphview](https://github.com/pmuston/homebrew-graphview) — a
web-based Neo4j graph viewer with WebGL rendering, level-of-detail filtering, and
table/tree/raw views of the same result.

```bash
brew tap pmuston/graphview
brew trust pmuston/graphview   # required for third-party taps
brew install graphview
```

`brew trust` is not optional — recent Homebrew refuses to install from an
untrusted third-party tap without it.

Check the install:

```bash
graphview version
```

## What this repo is

The formula plus the release binaries it downloads. Builds are published here as
GitHub Releases, for macOS and Linux on both amd64 and arm64.

Each archive ships the binary alongside its README, LICENSE,
THIRD-PARTY-NOTICES.md, an annotated configuration template, and a `deploy/`
directory with a reverse-proxy sample and read-only database user setup.

## Licence

graphview is MIT. See the LICENSE and THIRD-PARTY-NOTICES.md inside any release
archive.
