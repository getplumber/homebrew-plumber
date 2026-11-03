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
brew install getplumber/plumber/plumber@0.3.86
```

Versioned formulas are **keg-only** (not added to PATH automatically). To use them:

```bash
# Option 1: Use the full path for example:
/usr/local/opt/plumber@0.3.86/bin/plumber --version

# Option 2: Link it to make 'plumber' available globally
brew link plumber@0.3.86
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

## Changing GitHub workflows

Every action our workflows use is locked in `.github/workflows/actions.lock`: its commit, its owner and repository ids, and the actions it calls in turn. The `Lockfile` check fails a PR whose workflows the lockfile doesn't fully cover.

- After adding a workflow or changing any `uses:`, run `gh actions-lock` from the repository root (install it with `gh extension install github/gh-actions-lock`) and commit the updated lockfile with the workflow change.
- Never edit `actions.lock` by hand.
- Optional, before committing: `gh actions-lock --verify-local --no-fix` checks coverage offline. CI runs the full `gh actions-lock --verify`.
- Review a lockfile change as a dependency change: a changed `commit` is new code that will run, and a changed `owner_id` or `repo_id` means the repository behind the name is not the one we locked.

## License

[MPL-2.0](https://github.com/getplumber/plumber/blob/main/LICENSE)
