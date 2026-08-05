# typed: false
# frozen_string_literal: true

class PlumberAT0430 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.30"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.30/plumber-darwin-arm64"
      sha256 "ace0b67b40611f97ecf8db45b1d4da1062df81cc440b7ac13724a6bd9603a278"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.30/plumber-darwin-amd64"
      sha256 "cb7bfe21d1982e867935d87079af4553dbde8b3396e2594d85a3068ab780dfcc"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.30/plumber-linux-arm64"
      sha256 "a02d436ad4e3ff2cdc141da4bab62e6dd72687525817b0c048d23448f33189ea"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.30/plumber-linux-amd64"
      sha256 "09b8b08df70d9d8d854b5e19bdafe97a21201aa8b219f58ad46e0894eb1150e8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.30", shell_output("#{bin}/plumber --version")
  end
end
