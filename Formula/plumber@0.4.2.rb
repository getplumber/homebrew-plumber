# typed: false
# frozen_string_literal: true

class PlumberAT042 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.2/plumber-darwin-arm64"
      sha256 "48fc5ddab6ab7506589f4d9e390488d1fa731b6e8027b466e9d8951d1b7777a7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.2/plumber-darwin-amd64"
      sha256 "7515f2bbaa8c693fdd08ff051f0214282880615b1862a7a3797dfc21b45d6c3b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.2/plumber-linux-arm64"
      sha256 "701eac888572e12155f050678f3e49d94ddaa08299f48e9a76cd437a2511c34c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.2/plumber-linux-amd64"
      sha256 "7b8cb9d2b16dfd5365ad1569655b4ba3651218870612c94380d91d1bab4cc744"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.2", shell_output("#{bin}/plumber --version")
  end
end
