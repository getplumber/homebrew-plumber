# typed: false
# frozen_string_literal: true

class PlumberAT0394 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.94"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.94/plumber-darwin-arm64"
      sha256 "55e7f191db2bf5b48f4c7128977309d5e763f8ea188120e047179afd02ae46a9"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.94/plumber-darwin-amd64"
      sha256 "9070720ffbe49c7341118d4818d07acab5a2a8b1f32f4d0a76578bcb9674fd97"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.94/plumber-linux-arm64"
      sha256 "58ba0725de5ecf315256a4fe3130925a42e6225e5cc2a0a2d548c228b1616b20"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.94/plumber-linux-amd64"
      sha256 "e9e950fb8f1640f2d7c9e5d652884a472f02c6a340410b8739496ca631c8080b"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.94", shell_output("#{bin}/plumber --version")
  end
end
