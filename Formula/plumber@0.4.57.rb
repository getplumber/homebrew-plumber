# typed: false
# frozen_string_literal: true

class PlumberAT0457 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.57"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.57/plumber-darwin-arm64"
      sha256 "9ec834ea5b72af3b27c81bb50467ffcee2e319e5a8cb56cf14cd20d1c9faa821"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.57/plumber-darwin-amd64"
      sha256 "1ffbfc74f8d4616b587989153613ef125b88b5fbc60fdd4463385d5aa9308a5d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.57/plumber-linux-arm64"
      sha256 "0008b75154fd016f5c498a6cc8e703b71ef69efb734993122bbaed2a579932d4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.57/plumber-linux-amd64"
      sha256 "c7074b9e6fcfce9dc396c7190b843cb6fa8292df71e6117c8c502f23b75650b3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.57", shell_output("#{bin}/plumber --version")
  end
end
