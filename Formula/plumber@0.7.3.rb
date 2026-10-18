# typed: false
# frozen_string_literal: true

class PlumberAT073 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.3/plumber-darwin-arm64"
      sha256 "6cd464a6e3d0d608f9889b8f0a50d0a3ccbcde0982b04ae54a0073bc546af294"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.3/plumber-darwin-amd64"
      sha256 "08cd6d44a61149ccce9c71ef86cf614ef07e39c8b2d5ccec6deac96d7645c54a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.3/plumber-linux-arm64"
      sha256 "3995f70afd0f576dd30cc1e38a0f8099e1c2554fbcd9e248ad40ecf6d2ef54ea"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.3/plumber-linux-amd64"
      sha256 "329dfc0c91404d6d87ae95c60ef5a2aeade309df7020cd70c1e5e67c6737e9c3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.7.3", shell_output("#{bin}/plumber --version")
  end
end
