# typed: false
# frozen_string_literal: true

class PlumberAT0145 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.45"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.45/plumber-darwin-arm64"
      sha256 "befea6f554609a1fe1ebf58bb2905a9324da16c3002e460065ba3b4ff989428d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.45/plumber-darwin-amd64"
      sha256 "dfad9e4b92500f9f850a15ec186d32e521fac1cbf3e312dee1c625ec3c1fd2ed"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.45/plumber-linux-arm64"
      sha256 "6e5104bdfdd9fd892b1683a41b1f20e72d3fd4c66b24dba7fa914a8d9ec75a4c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.45/plumber-linux-amd64"
      sha256 "860364ffb4d73296f7cb88e8cdefd266f805ccd848f8d9345ef1a92fb94d0a12"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.45", shell_output("#{bin}/plumber --version")
  end
end
