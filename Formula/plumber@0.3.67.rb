# typed: false
# frozen_string_literal: true

class PlumberAT0367 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.67"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.67/plumber-darwin-arm64"
      sha256 "5c6502397b6cf828860c57f03270d3a0ff7bf13651d71389a07e77a351ebcf75"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.67/plumber-darwin-amd64"
      sha256 "e9be069a8950a7997d79125cc58f7d0a57889404a42d8a5782292275d1233325"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.67/plumber-linux-arm64"
      sha256 "5e75b65859322e32c462c6433da6819f0b09006860e96b86846f7c3f5453d7a6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.67/plumber-linux-amd64"
      sha256 "7471b10b9a3d6e8a014ff4fc2c4eb4f0583cb588a88b522eee5bafe4b423e96f"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.67", shell_output("#{bin}/plumber --version")
  end
end
