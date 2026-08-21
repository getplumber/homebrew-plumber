# typed: false
# frozen_string_literal: true

class PlumberAT0440 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.40"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.40/plumber-darwin-arm64"
      sha256 "d589f9a44f4aa0e924766f0e1a1b20d55da5193913ad07520fea13b5edd704b7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.40/plumber-darwin-amd64"
      sha256 "e2695fa47bd724f29352c15b907a8e610e5d12d03c27da5c034f7e4998a2d3dc"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.40/plumber-linux-arm64"
      sha256 "d4c8e175ae79c58f5db3f2c6cf1289ee5846ae5cf3b7f52d5a18a5c74d8433e1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.40/plumber-linux-amd64"
      sha256 "d7fcd55fa83307a5436c887d6c4fc48f5ee6bf3955ea57786a7d506e735bbb48"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.40", shell_output("#{bin}/plumber --version")
  end
end
