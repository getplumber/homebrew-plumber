# typed: false
# frozen_string_literal: true

class PlumberAT0139 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.39"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.39/plumber-darwin-arm64"
      sha256 "59ee42a0cc7bdc3f28aef3fd5cbd6a2a51b531cb2c460985acbc29475d9d5e4a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.39/plumber-darwin-amd64"
      sha256 "542f79fbb284af5adc0c0f1c830c94e3704799665e3a893ff8a0f0ab05532947"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.39/plumber-linux-arm64"
      sha256 "55590f51e7bd29aa23ff180ff06e4b955e755a93b9e3e796cad4c93e22725cc1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.39/plumber-linux-amd64"
      sha256 "465b6fc9f10e51281fa87187a583edebd9792f03ac854db058c1946a22dc263e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.39", shell_output("#{bin}/plumber --version")
  end
end
