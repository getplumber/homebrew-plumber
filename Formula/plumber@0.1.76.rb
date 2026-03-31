# typed: false
# frozen_string_literal: true

class PlumberAT0176 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.76"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.76/plumber-darwin-arm64"
      sha256 "7c32c4fe5bb36497acfdf78f36070d64bb3920835fe9df561eee2e81668abeab"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.76/plumber-darwin-amd64"
      sha256 "60b38af06a4c1499c56e4680a8fd4935fd7bd561137987f03bebef7e9644e691"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.76/plumber-linux-arm64"
      sha256 "444ebb9c84e53a7c694d6e4afb84dc9d9e41812a2c60d9d79f3799c6e3fe0cfc"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.76/plumber-linux-amd64"
      sha256 "861fad95b3ba469fd0f41c9eb445bcda7fbd0a1d21633f33cee785d060ed2cea"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.76", shell_output("#{bin}/plumber --version")
  end
end
