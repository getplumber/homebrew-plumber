# typed: false
# frozen_string_literal: true

class PlumberAT0319 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.19"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.19/plumber-darwin-arm64"
      sha256 "d637be9d6b94eba333b48d855321053a583c48fe9d1dafe665f85602551d7fed"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.19/plumber-darwin-amd64"
      sha256 "c8ba6286b7e6663a714adb3d2b90ca5be015e98d37ba0ba44d0c32c365243b75"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.19/plumber-linux-arm64"
      sha256 "2d66f0a11c3ec3ae419609b7a8123a03653befaf5c1ab5eaacb27db44faba385"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.19/plumber-linux-amd64"
      sha256 "28f8aa9461532cf423a58f1136bf670a55297946d5e2f385762d2bb1c7c7a6d2"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.19", shell_output("#{bin}/plumber --version")
  end
end
