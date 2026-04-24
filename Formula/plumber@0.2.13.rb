# typed: false
# frozen_string_literal: true

class PlumberAT0213 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.13"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.13/plumber-darwin-arm64"
      sha256 "50fceeb1b01581ea02f874af1288e7a5585a8b3dccd613f1c073a5440869b365"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.13/plumber-darwin-amd64"
      sha256 "e34cba33db06f1ded0a3d6f390713ae03b7b0eeecc5e7d36ad5a6102ae4b1b0a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.13/plumber-linux-arm64"
      sha256 "86d6eee4324a970e7a6aeb8e5f32a149d8ed09e51734006f482a74e84679fb6a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.13/plumber-linux-amd64"
      sha256 "7f8cb98c959c612d136860df32108053601190ebc354cdaac701a523db2dd293"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.13", shell_output("#{bin}/plumber --version")
  end
end
