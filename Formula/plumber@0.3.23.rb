# typed: false
# frozen_string_literal: true

class PlumberAT0323 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.23"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.23/plumber-darwin-arm64"
      sha256 "29c71b10150fa4a11360df9f3f957f51a6ec300c6d2f15ae9a1850d8eb2d3404"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.23/plumber-darwin-amd64"
      sha256 "fb1359339169435cfcf60f67f030b545cc5c49fc0ac896d7c3ecabe402995522"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.23/plumber-linux-arm64"
      sha256 "387613ac420767de3f9d86037f8eed73a7fcab1bdfb60c0a57689177235a75a5"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.23/plumber-linux-amd64"
      sha256 "d12b223c613020b9bbbaf93db78cddac8ef8de1c761045ac0e16bbfcf968ae7f"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.23", shell_output("#{bin}/plumber --version")
  end
end
