# typed: false
# frozen_string_literal: true

class PlumberAT0181 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.81"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.81/plumber-darwin-arm64"
      sha256 "082ccf1f5c841472945dd978af3a63cd324d974b97d71b4c43c26fabe1bec2a1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.81/plumber-darwin-amd64"
      sha256 "f55559175a8c2b154f701346b9b540e08b767bec7c4d46ca64e5deea18d4e198"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.81/plumber-linux-arm64"
      sha256 "f1dc4d82292dc79977fec940f57916d45f62fca137937a7e83e686d7912f8f33"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.81/plumber-linux-amd64"
      sha256 "009239f100aed7e3718879da3fa3cb271610141a4eaca0d84f655472bb22ab9a"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.81", shell_output("#{bin}/plumber --version")
  end
end
