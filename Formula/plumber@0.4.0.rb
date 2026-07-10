# typed: false
# frozen_string_literal: true

class PlumberAT040 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.0/plumber-darwin-arm64"
      sha256 "a3e8fe36bfacee7d63a372460883a091ffa11ebdd691df83c1192cfaa2461b2a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.0/plumber-darwin-amd64"
      sha256 "f3a6680d1afa51a1afeb3d4880406349243a62a9c9c0d66a8ec48ca36dbb9562"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.0/plumber-linux-arm64"
      sha256 "7db1d98fb7d4f96799683215eef44a233327c2c12cd9f91c6fedd2f0e932ce17"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.0/plumber-linux-amd64"
      sha256 "df81bdf0e2549489c894ca5fbfd882a955a5138204ac620ff6677c5c18ddd848"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.0", shell_output("#{bin}/plumber --version")
  end
end
