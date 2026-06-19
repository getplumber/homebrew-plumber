# typed: false
# frozen_string_literal: true

class PlumberAT0365 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.65"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.65/plumber-darwin-arm64"
      sha256 "44dd7c5957bbb452ef248cef557fbd5fd6e437e864b7250eed0bc19ef8b949ed"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.65/plumber-darwin-amd64"
      sha256 "3119fcb9988155096b5fd60984873cbd78f4cb6e370a227e6892a7118bfa1ab3"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.65/plumber-linux-arm64"
      sha256 "efc9a7ea285ea64a070d083dc0c69a2a033682b414ab79a79c44fbc1dc927aed"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.65/plumber-linux-amd64"
      sha256 "bb9b0843b91e03538be1f0b52150d4ebac59ecbf44de468e45e14ab2679a8e0f"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.65", shell_output("#{bin}/plumber --version")
  end
end
