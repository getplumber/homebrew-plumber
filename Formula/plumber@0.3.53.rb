# typed: false
# frozen_string_literal: true

class PlumberAT0353 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.53"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.53/plumber-darwin-arm64"
      sha256 "c78143426318fff6e5c2b9d9126ad25aacbba674a8fa5ca33f24b53a57802318"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.53/plumber-darwin-amd64"
      sha256 "1c74786a05b9daecfdfd2a20c1686a01f403bce401f08283b864cbfc38293e94"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.53/plumber-linux-arm64"
      sha256 "c34e0d41e7b56d0c31a085acd9fef7eb98d4fc38130e542820f7dc5f89fa5f42"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.53/plumber-linux-amd64"
      sha256 "d0311834a12b38ba23d33bdc631387653958e87edf7d6e2ce0538eddc8774f76"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.53", shell_output("#{bin}/plumber --version")
  end
end
