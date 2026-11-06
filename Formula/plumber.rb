# typed: false
# frozen_string_literal: true

class Plumber < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.22"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-arm64"
      sha256 "546a1bf83e7ea23e8d230d7b651c7de207b4fe34cfd6ed44ac576368b6d94415"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-amd64"
      sha256 "8b3831098971d18ceb5517098713dc05b3885ce51c8a9507e69e07ee480edfad"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-arm64"
      sha256 "53f9a4ba8ab9a0f4a671c299f07c96a3c0929acf340e468193a9ff50f6a4ac95"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-amd64"
      sha256 "82f4edd402d663ff657f6fd1f361304c69510f7c996d8299d2cb2fd5b7eec396"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  test do
    assert_match "plumber version #{version}", shell_output("#{bin}/plumber --version")
  end
end
