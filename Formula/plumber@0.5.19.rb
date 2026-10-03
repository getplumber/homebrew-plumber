# typed: false
# frozen_string_literal: true

class PlumberAT0519 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.19"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.19/plumber-darwin-arm64"
      sha256 "761b696a7397f90187e0c9418d90fe9191b9ca359abca29c0b2332e6a3190a9d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.19/plumber-darwin-amd64"
      sha256 "7ea4cda8b93052c80bfa8d0a8f3224c75e160c0a1c2d64902511c5d24a702607"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.19/plumber-linux-arm64"
      sha256 "1323609e873cb046ee22a3d73bebe4f54b68e183f52ef836ea7186d5560f2264"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.19/plumber-linux-amd64"
      sha256 "e6707e287a18053ea2f69c6cec03d90b0e65403ef58a735503b740b110703401"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.19", shell_output("#{bin}/plumber --version")
  end
end
