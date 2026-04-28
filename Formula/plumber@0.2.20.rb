# typed: false
# frozen_string_literal: true

class PlumberAT0220 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.20"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.20/plumber-darwin-arm64"
      sha256 "437f0e7b78d79c6377ae4f4ffe32999fde5848301d39f017ab0b1e165b4e9728"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.20/plumber-darwin-amd64"
      sha256 "4113fb84362bef7d317fd01e77cbf13d56637badbdfd423dbbb717684e9f57d6"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.20/plumber-linux-arm64"
      sha256 "d23112aa4ad2e0fb1d1a10f689b399687dc8a1f5024f5120338a93c341f3c4cd"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.20/plumber-linux-amd64"
      sha256 "a99cb8cf7b44353d108fa24c3d4e1cffdfd3f945505addaa90b8607ed7775d45"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.20", shell_output("#{bin}/plumber --version")
  end
end
