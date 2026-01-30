# typed: false
# frozen_string_literal: true

class PlumberAT0127 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.27"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.27/plumber-darwin-arm64"
      sha256 "cafe3a3af5a5d77a1fc598eb1b99ec38c2866b1cb709ff413f9fc793d2aeecf8"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.27/plumber-darwin-amd64"
      sha256 "80b079528773acbfb7060e3c8e079362c910f9bdf9d0fd2a872670c2f6eee59c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.27/plumber-linux-arm64"
      sha256 "85353dffc27cb6e523a903e85d4548891b9bffd4afcf8890cf031ca8f9551a9b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.27/plumber-linux-amd64"
      sha256 "d86c8da179de25909d61d5d161850bf836f2c5c3c67786db3143a06f99d858f5"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.27", shell_output("#{bin}/plumber --version")
  end
end
