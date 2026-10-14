# typed: false
# frozen_string_literal: true

class PlumberAT063 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.6.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.3/plumber-darwin-arm64"
      sha256 "b201e4dc12c5ca8c33f6fe06248036e06ff1ab5c15e57fd8b81711a22cc1e3e4"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.3/plumber-darwin-amd64"
      sha256 "f6aff1bb364e3b62623f59860f1ad5858109e531b3a1d260e3333270080c4084"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.3/plumber-linux-arm64"
      sha256 "3b0d4fd1faa3c9449625e36c2bb92641eb0f2a9e9fbfd95d3228df78a0aef2f5"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.3/plumber-linux-amd64"
      sha256 "ca601a5e17e69487cbfdc01aeb073f54ec32414b14dd79ce236baf5ab2be5192"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.6.3", shell_output("#{bin}/plumber --version")
  end
end
