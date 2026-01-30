# Homebrew Tap for Plumber

<p align="center">
  <img src="assets/plumber.svg" alt="Plumber" width="600">
</p>

<p align="center">
  <b>CI/CD compliance scanner for GitLab pipelines</b>
</p>

This is the official Homebrew tap for [Plumber](https://github.com/getplumber/plumber), a CI/CD compliance scanner for GitLab pipelines.

## Installation

```bash
brew tap getplumber/tap
brew install plumber
```

Or install directly:

```bash
brew install getplumber/tap/plumber
```

## Installing a Specific Version

Need a specific version? Use the `@` syntax:

```bash
# Install a specific version
brew install getplumber/tap/plumber@0.1.23

# Link it to make it available as 'plumber'
brew link plumber@0.1.23
```

Available versions:
- `plumber` - latest (currently 0.1.23)
- `plumber@0.1.23`

> **Note:** Versioned formulas are "keg-only", meaning they won't automatically link to `/usr/local/bin`. Use `brew link` to make them available, or run directly from the Cellar.

## Upgrade

```bash
brew upgrade plumber
```

## Uninstall

```bash
brew uninstall plumber
brew untap getplumber/tap  # optional: remove the tap
```

## Documentation

For full documentation, visit [getplumber.io](https://getplumber.io) or the [GitHub repository](https://github.com/getplumber/plumber).

## License

[MPL-2.0](https://github.com/getplumber/plumber/blob/main/LICENSE)
