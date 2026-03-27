# typed: false
# frozen_string_literal: true

class PlumberAT0175 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.75"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.75/plumber-darwin-arm64"
      sha256 "c981e2299adfc70b35576784bcb03f673ff45cdcc79262a95e9e547123a632bb"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.75/plumber-darwin-amd64"
      sha256 "1502f0ba8925593139eebc917824d2c90827cff412cc0db17214a0402b0a8747"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.75/plumber-linux-arm64"
      sha256 "46289ec2320bb79685413f534a7e3d68ba3075a9322b426a4107219426d2d5d6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.75/plumber-linux-amd64"
      sha256 "6607414f81ebd8f9bf1f0797772924a44735bb28e93ebf34782e0736f7aa9779"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.75", shell_output("#{bin}/plumber --version")
  end
end
