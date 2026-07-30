# typed: false
# frozen_string_literal: true

class PlumberAT0423 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.23"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.23/plumber-darwin-arm64"
      sha256 "db34eb01df8aad9dd325077e0c926a2255f58bfd2f060db51373c5e7b3696934"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.23/plumber-darwin-amd64"
      sha256 "139e7613a579541c7491df1998f7399bef6b70352dd84358c70c6112a053bae9"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.23/plumber-linux-arm64"
      sha256 "127dc5b3f2f01e0ca935725c1bb623ccfcad1816954f090a4e2f5a0759cdca3b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.23/plumber-linux-amd64"
      sha256 "c51bd8817639cc92ac1213fb0cd0b7792601537abf417e5abe600dfe3c12e49a"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.23", shell_output("#{bin}/plumber --version")
  end
end
