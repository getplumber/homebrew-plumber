# typed: false
# frozen_string_literal: true

class PlumberAT0333 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.33"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.33/plumber-darwin-arm64"
      sha256 "5801bb284e5aeb667f9340442374d97dd7d505436ec4d708b5e2d7a9f99f69c2"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.33/plumber-darwin-amd64"
      sha256 "c61f2fd5e4d548c0a2a847b829eb494f1690ee5bd3602f1f016a3a70d97b0513"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.33/plumber-linux-arm64"
      sha256 "8ea5b6a70c019c2d8d404db22953c44ff296a371ab4d8a13031a64a071b80eb4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.33/plumber-linux-amd64"
      sha256 "f7d7fe8f43110f0b19446949c97c671db7c75fe510a6d4648606a160fc924086"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.33", shell_output("#{bin}/plumber --version")
  end
end
