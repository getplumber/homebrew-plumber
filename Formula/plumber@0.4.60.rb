# typed: false
# frozen_string_literal: true

class PlumberAT0460 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.60"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.60/plumber-darwin-arm64"
      sha256 "ecafe94745f2bb21d99910dff4dc5e0e1d297699078087ede7df0fbacc1125fe"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.60/plumber-darwin-amd64"
      sha256 "e149f0c71457dd92572c017300dd4c2b867892419d183b76ce38b559a3ae2b5d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.60/plumber-linux-arm64"
      sha256 "89fe4c9d6912bd1ea89d793ade67a3020690757b932069624b00a0d33428c4f5"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.60/plumber-linux-amd64"
      sha256 "79f2173ab3d47c37f8ef78ca7400b3f719de18ae119377c6141d7f50489922bf"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.60", shell_output("#{bin}/plumber --version")
  end
end
