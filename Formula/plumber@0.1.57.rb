# typed: false
# frozen_string_literal: true

class PlumberAT0157 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.57"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.57/plumber-darwin-arm64"
      sha256 "314be46d2fc71f2abcf77c4e8c910c8d30f8dbb58fd17bc1a26ec29ecae696fa"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.57/plumber-darwin-amd64"
      sha256 "506ebcf0e169d6792b182a75d66efb370d39933b257ce0b0e6cece7b0c91f706"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.57/plumber-linux-arm64"
      sha256 "fb8d1a975ca8eb52d5cf214f1c9990f1cb03ee5870e48dd3c6b1e47df3c208a5"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.57/plumber-linux-amd64"
      sha256 "91efd8331c5a04c099635e3308c4b453d4287625af1809c6624c939d7431234e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.57", shell_output("#{bin}/plumber --version")
  end
end
