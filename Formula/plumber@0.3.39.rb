# typed: false
# frozen_string_literal: true

class PlumberAT0339 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.39"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.39/plumber-darwin-arm64"
      sha256 "343844de733c010c09793b3d0ccd4450a6d8bb55e06d19c8a0ec2d548618650a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.39/plumber-darwin-amd64"
      sha256 "60b5e2dee1230d6259cf8ec340a5814368e9e6d0a9765e8f51c7be7ff7a0a5de"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.39/plumber-linux-arm64"
      sha256 "5470224ff2427d76196eac9e5f4e75016abb4a546644ca97ec1a7d7edce7f4d1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.39/plumber-linux-amd64"
      sha256 "e314a5e30dadf06e942547410137e32e73e1763d45b949db36bfd0c0e9841470"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.39", shell_output("#{bin}/plumber --version")
  end
end
