# typed: false
# frozen_string_literal: true

class PlumberAT0363 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.63"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.63/plumber-darwin-arm64"
      sha256 "679c727ab0a52ff08373d288d33339a80c8beb68d033dac9856bbb7b086ce2aa"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.63/plumber-darwin-amd64"
      sha256 "6d13c6b2ff0849de44668f02b80cb0b1ab4f391797a9f7817805c10448418672"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.63/plumber-linux-arm64"
      sha256 "a392eadbdb9eaa5663ccf7727646160d2211275bfc0a9a996d188d72dbf226ab"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.63/plumber-linux-amd64"
      sha256 "a8308cc323d6cc0d00c417535418e78e0105b7dd733550eb78f8846df8bcd11f"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.63", shell_output("#{bin}/plumber --version")
  end
end
