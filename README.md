# Homebrew Tap for Plumber

<p align="center">
  <img src="assets/plumber.svg" alt="Plumber">
</p>

<p align="center">
  <b>CI/CD compliance scanner for GitLab pipelines</b>
</p>

This is the official Homebrew tap for [Plumber](https://github.com/getplumber/plumber), a CI/CD compliance scanner for GitLab pipelines.

## Installation

```bash
brew tap getplumber/plumber
brew install plumber
```

Or install directly:

```bash
brew install getplumber/plumber/plumber
```

## Installing a Specific Version

Need a specific version? Use the `@` syntax:

```bash
brew install getplumber/plumber/plumber@0.1.26
```

Versioned formulas are **keg-only** (not added to PATH automatically). To use them:

```bash
# Option 1: Use the full path for example:
/usr/local/opt/plumber@0.1.26/bin/plumber --version

# Option 2: Link it to make 'plumber' available globally
brew link plumber@0.1.26
```

- `plumber` - latest (auto-links to PATH)
- `plumber@X.Y.Z` - specific version (keg-only)

See [all releases](https://github.com/getplumber/plumber/releases) for available versions.

## Upgrade

```bash
brew update && brew upgrade plumber
```

## Uninstall

```bash
brew uninstall plumber
brew untap getplumber/plumber  # optional: remove the tap
```

## Documentation

For full documentation, visit [getplumber.io](https://getplumber.io) or the [GitHub repository](https://github.com/getplumber/plumber).

## License

[MPL-2.0](https://github.com/getplumber/plumber/blob/main/LICENSE)
