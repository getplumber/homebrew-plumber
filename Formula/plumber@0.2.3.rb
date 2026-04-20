# typed: false
# frozen_string_literal: true

class PlumberAT023 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.3/plumber-darwin-arm64"
      sha256 "5df5e5b44f3a0157419b8b8b024de71140cb6595cc5e7230725415d1dc19b94f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.3/plumber-darwin-amd64"
      sha256 "c665b2096e6261480174e438a9ee3c26d62607097a4e5fa525ef9838895f0356"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.3/plumber-linux-arm64"
      sha256 "b0a7213b7cf3c01f7f01fad476697c6cfa256b4afdaeb4ecd18db05d407fda2b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.3/plumber-linux-amd64"
      sha256 "fba922ba47c2a46d2d3d3ec9f80a24a317d05bfadb36be34f8133eb482937d17"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.3", shell_output("#{bin}/plumber --version")
  end
end
