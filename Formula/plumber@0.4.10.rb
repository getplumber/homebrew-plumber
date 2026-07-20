# typed: false
# frozen_string_literal: true

class PlumberAT0410 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.10"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.10/plumber-darwin-arm64"
      sha256 "be49046bbe2c139cf075b2e25226e5cef94284647ec54a8188e321cd4e369d5a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.10/plumber-darwin-amd64"
      sha256 "f7651e570bd1fdd361e3a7ce9c14a7e97d9fa65eb2464942eccc76cfb157d685"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.10/plumber-linux-arm64"
      sha256 "12743b06ce44c8d4cbda9863e93f9b9150469583739ab39ebcd10971248e3931"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.10/plumber-linux-amd64"
      sha256 "6e1d2c266c78f13bddeeed22626712f6156abf9e54db0dde77e70b53496b175c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.10", shell_output("#{bin}/plumber --version")
  end
end
