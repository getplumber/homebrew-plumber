# typed: false
# frozen_string_literal: true

class PlumberAT0392 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.92"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.92/plumber-darwin-arm64"
      sha256 "15abd8d941c7abf89def3149bfd537f8f718f40f4b64ec9ee0f39eae9e66d7ba"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.92/plumber-darwin-amd64"
      sha256 "abb7afdf40cd12e733c64d1739ff1c68aa06bc85f7a777cac66f455028e784d8"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.92/plumber-linux-arm64"
      sha256 "e15f38f8a20eb0797d2ffac1fc86c64f66839b9219c32b4778eee820ba48cca1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.92/plumber-linux-amd64"
      sha256 "b7069baf42399b656af088f7a6aad2640ef33a2b5934e027f4f957ea6ba2b766"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.92", shell_output("#{bin}/plumber --version")
  end
end
