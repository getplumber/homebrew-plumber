# typed: false
# frozen_string_literal: true

class PlumberAT0378 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.78"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.78/plumber-darwin-arm64"
      sha256 "f9eeb7eacd18b725f8fabb86ea57a0ac2b688b64934ed402cefa732ed624d42a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.78/plumber-darwin-amd64"
      sha256 "e35acb06be551e2be29e640db00cbf23b5dcb23e471b81f30f762f4d93e04265"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.78/plumber-linux-arm64"
      sha256 "0bbb4132c58f0dba28bd0f3798fcac00aac1a6a33ff669f76a0d998750c60d52"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.78/plumber-linux-amd64"
      sha256 "23645886ad5896d82df5e873bf895f9348eb1adf6343280bded800c435181fd0"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.78", shell_output("#{bin}/plumber --version")
  end
end
