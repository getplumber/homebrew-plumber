# typed: false
# frozen_string_literal: true

class PlumberAT0512 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.12"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.12/plumber-darwin-arm64"
      sha256 "873484d171a9eb9aec88f3980b8fffad9b046db765f635e8652ba2d29d4ecf60"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.12/plumber-darwin-amd64"
      sha256 "b580e4c866ac96ccc9f13a717994838669e88957c880aa0e440932c403b4e2ee"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.12/plumber-linux-arm64"
      sha256 "3e472d88ec38edc571c5253771e7abc0330fc7c65986b4620a57f2efc71d6bd3"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.12/plumber-linux-amd64"
      sha256 "e9b8bfc61bae8e39f4f5f5efbeb4103b8ee94d13f7e1a0894fa2d2cfaa643838"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.12", shell_output("#{bin}/plumber --version")
  end
end
