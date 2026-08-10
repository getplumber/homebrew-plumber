# typed: false
# frozen_string_literal: true

class PlumberAT0436 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.36"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.36/plumber-darwin-arm64"
      sha256 "a3993f9aca4bfc5f378b3deb4925d59cffbbc4f1b7440c7ce179033e0bd2dd1c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.36/plumber-darwin-amd64"
      sha256 "093a858d66f542ca8e167a4d3b63c8840964740e3b5c97dd6c671e2b58c160a2"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.36/plumber-linux-arm64"
      sha256 "998a006600db38e5256ea54a15d960e6468b0f25233a65480ecf6638334e13ce"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.36/plumber-linux-amd64"
      sha256 "66ab5013e9211e5e6db1d0fa901b724704db7da660b6e4d180646580af02a690"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.36", shell_output("#{bin}/plumber --version")
  end
end
