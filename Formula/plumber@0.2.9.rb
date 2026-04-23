# typed: false
# frozen_string_literal: true

class PlumberAT029 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.9"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.9/plumber-darwin-arm64"
      sha256 "62f07e8f44214eaf219a11db1814a20f3904a82ad1954b0fb3c8d2c537e7d167"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.9/plumber-darwin-amd64"
      sha256 "6dcdbee0c9371d88d3510aa6553c263fb77f124cc80592fc939f556e91e0ac5a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.9/plumber-linux-arm64"
      sha256 "6464ecb2516717252ff26104cf35caec79f090fe29b1adfddddc3b7a831cabf4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.9/plumber-linux-amd64"
      sha256 "1056d1bec06b265eefaa6a4fcd17b8161553763ef81d94d8e972a8f2f41fd309"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.9", shell_output("#{bin}/plumber --version")
  end
end
