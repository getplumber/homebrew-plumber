# typed: false
# frozen_string_literal: true

class PlumberAT056 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.6"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.6/plumber-darwin-arm64"
      sha256 "2cef60a178e8195d0861bf0b6da0ae171ae2599803b6fef67edab209433462bf"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.6/plumber-darwin-amd64"
      sha256 "769c2c2bac8803a6cf6dd351a5511a9fd1459fe969420eb9ab56d80807c4456c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.6/plumber-linux-arm64"
      sha256 "6f1da80a46d55a39a4f30f6f4ba86fdd409db207a2b01b093031b2ce433c1dee"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.6/plumber-linux-amd64"
      sha256 "e8ebb3ea9bba7697a0399dc858a82c041f7e9833ba8aeee61f596891a10695c3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.6", shell_output("#{bin}/plumber --version")
  end
end
