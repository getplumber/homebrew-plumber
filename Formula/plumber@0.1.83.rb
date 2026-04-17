# typed: false
# frozen_string_literal: true

class PlumberAT0183 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.83"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.83/plumber-darwin-arm64"
      sha256 "2b57dcdea37736e42c479d57ac40abf47586a6a4b2853996f41e5eb646d25e10"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.83/plumber-darwin-amd64"
      sha256 "3ef553355118d53c11956871570da763940c24f59df3eda3e0461907fa93f1a1"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.83/plumber-linux-arm64"
      sha256 "b099c3b76a812bee2e0ea3ace746e5073f8f799fdd0ddaf31bfb8d839e3987c4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.83/plumber-linux-amd64"
      sha256 "34d3bc6b51749c9c243b76ae69f63eea981be2848021b249f53757103c6caec1"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.83", shell_output("#{bin}/plumber --version")
  end
end
