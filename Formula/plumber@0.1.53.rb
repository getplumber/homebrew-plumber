# typed: false
# frozen_string_literal: true

class PlumberAT0153 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.53"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.53/plumber-darwin-arm64"
      sha256 "9bd19ee47f54109c56b06df2863657e82731732653375614b68c3d4dd11a0b03"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.53/plumber-darwin-amd64"
      sha256 "2e9bf57c0c85e2d830f3658db4f344cda335fed07cbe4c15db35c408dde90a91"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.53/plumber-linux-arm64"
      sha256 "95a2ff53a57b8355540f9f86bf3eb3be8372fb3bb8646624e42bde61128df821"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.53/plumber-linux-amd64"
      sha256 "181b9638235273be3c1ae06c2a405572355ea136951407145449ca719c38439d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.53", shell_output("#{bin}/plumber --version")
  end
end
