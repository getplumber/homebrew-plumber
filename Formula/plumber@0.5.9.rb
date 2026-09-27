# typed: false
# frozen_string_literal: true

class PlumberAT059 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.9"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.9/plumber-darwin-arm64"
      sha256 "4c607537057482afba9194a5445ea354cadcf6b67c9b797646b23ed19314df8d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.9/plumber-darwin-amd64"
      sha256 "ffcb2ea4a98931fbe4b379689ee2b5a38c3e7537a3b1acd6137c4944375ada4b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.9/plumber-linux-arm64"
      sha256 "cb4870fcf5d2643404566a8a2c7f275a8b932910d75e1be682307ac328d95fc6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.9/plumber-linux-amd64"
      sha256 "d6fa41324451dddc4cea8a6161c6bc82d2c2019692ec47019f822e8527bcabb3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.9", shell_output("#{bin}/plumber --version")
  end
end
