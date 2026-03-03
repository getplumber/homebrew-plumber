# typed: false
# frozen_string_literal: true

class PlumberAT0151 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.51"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.51/plumber-darwin-arm64"
      sha256 "b7d45cc90d64e2e1e98a2dbe745cc2f540a008ba738c76137c1bdf198befcc53"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.51/plumber-darwin-amd64"
      sha256 "b1d168f4a9a3af779f290601344aa890e8393adc1daeb4139dc2422d1afcf23b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.51/plumber-linux-arm64"
      sha256 "2c12a167f10755a4a61c23cc3d9c95141058ab650a3411f7d07271076c5c3b95"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.51/plumber-linux-amd64"
      sha256 "3e68b429374920012fc8a688948afc5d3ca2adacde755d747799bc0351dcd6f5"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.51", shell_output("#{bin}/plumber --version")
  end
end
