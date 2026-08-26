# typed: false
# frozen_string_literal: true

class PlumberAT0444 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.44"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.44/plumber-darwin-arm64"
      sha256 "c5f216fcc19c8e37acad7d0536751713ccc5f52d59b8823aaa8f48736e3a96e3"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.44/plumber-darwin-amd64"
      sha256 "a9464da095ae928fdc730513b8dc9d36886c1c5f2f9a7b3c294431f8b623c46a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.44/plumber-linux-arm64"
      sha256 "b9764df25bafdd230aaa7130b57dd6b95d0bbbc376fd8e7d7483ba1df45808b0"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.44/plumber-linux-amd64"
      sha256 "a29674a14ed1daac2a27936f72b9e5d89b0a92e35487cd0fae945a25c3a9ce03"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.44", shell_output("#{bin}/plumber --version")
  end
end
