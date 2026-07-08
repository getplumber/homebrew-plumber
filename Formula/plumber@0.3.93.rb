# typed: false
# frozen_string_literal: true

class PlumberAT0393 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.93"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.93/plumber-darwin-arm64"
      sha256 "92697b3bb378c053020b0417d3ccb6feb818aa6bbee527b2766680908155d4c1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.93/plumber-darwin-amd64"
      sha256 "9e6e7508e5e809fb164fca5d9cfb809ada622f52acb21f56aa68ae3bfa954b39"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.93/plumber-linux-arm64"
      sha256 "0fe61651be623e46c596143fa98cc55213575f58ea8fd12e6df92bfca2e98daa"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.93/plumber-linux-amd64"
      sha256 "e92abefa1fdae65a7cae27f1abed66768d4a889bc67d8bdc73feef27600ab0df"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.93", shell_output("#{bin}/plumber --version")
  end
end
