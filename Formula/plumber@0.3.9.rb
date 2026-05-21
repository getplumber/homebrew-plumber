# typed: false
# frozen_string_literal: true

class PlumberAT039 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.9"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.9/plumber-darwin-arm64"
      sha256 "9e1900a4e6ffdfe096d2e9159057b64318bd14fd53214ed5ff1cbfe0b33c93a0"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.9/plumber-darwin-amd64"
      sha256 "dec3fc7947b4af0dc93984795741ef8288cc05dcd9a15dc824a4fb2eddf34faa"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.9/plumber-linux-arm64"
      sha256 "656f2fc4ad07f5678e38243bcf80a73cee2313f988056a7f96ff854379836747"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.9/plumber-linux-amd64"
      sha256 "a56115db2d4a40fc37ace7db9723d1272ed7ab8ef66d1a5d45a03559d611466e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.9", shell_output("#{bin}/plumber --version")
  end
end
