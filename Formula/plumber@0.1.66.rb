# typed: false
# frozen_string_literal: true

class PlumberAT0166 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.66"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.66/plumber-darwin-arm64"
      sha256 "6740a77a662216ed9358a1e90e3b0946ee57c93c5cffcd2979496c07955b0b13"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.66/plumber-darwin-amd64"
      sha256 "8f2ee75d389e411f80986eb0d7f6041204bd07fb2ee9a311a641da14084e616a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.66/plumber-linux-arm64"
      sha256 "212b4d326f12225f1539faa45d9c71b8ab3abd628c66fe0d45343d8940b5a72d"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.66/plumber-linux-amd64"
      sha256 "7754f06650441b0290a26b4c73d887f0e7ef64fd98857eabdf4d37c040d8c068"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.66", shell_output("#{bin}/plumber --version")
  end
end
