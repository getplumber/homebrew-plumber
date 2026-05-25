# typed: false
# frozen_string_literal: true

class PlumberAT0321 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.21"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.21/plumber-darwin-arm64"
      sha256 "904e06374cb406b05e738d152c308eacd1b904f39057683f34417f5c27d5bfbd"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.21/plumber-darwin-amd64"
      sha256 "cd37527a7d016dea45e97a755673ba7434309c22c120b888560c07070fc543e1"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.21/plumber-linux-arm64"
      sha256 "facef63d772ae53e25f5c1cd8aeb3b76792a6db91fa3332726bf494364c84d10"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.21/plumber-linux-amd64"
      sha256 "f7e107eadb1b12cc66e3bfcb44290e42b9f81b2a0b43d5de6f8d18534a8b46d8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.21", shell_output("#{bin}/plumber --version")
  end
end
