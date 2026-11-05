# typed: false
# frozen_string_literal: true

class PlumberAT0719 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.19"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.19/plumber-darwin-arm64"
      sha256 "658a01314473e4dedcc9109ad79df6b67d0ae60f9c53daa93523d6506d36c096"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.19/plumber-darwin-amd64"
      sha256 "7330d633501458b685e56b5d467dcd778032169d62677be80607347bc78c3eb1"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.19/plumber-linux-arm64"
      sha256 "8e789e202b66bd5187b45e840b6c9d53714c51ddbdc5045f0f5756ea8174cdcd"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.19/plumber-linux-amd64"
      sha256 "6e9eeb5bbe1ef51163cb5466d0236406b324ee7823da72dc8e784fb5a6e3fddb"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.7.19", shell_output("#{bin}/plumber --version")
  end
end
