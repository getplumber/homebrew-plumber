# typed: false
# frozen_string_literal: true

class PlumberAT0160 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.60"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.60/plumber-darwin-arm64"
      sha256 "959cd05d3ae75ec65797e8f335f2fb63267bf7631ebd300a95e9ce03f6e60c9b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.60/plumber-darwin-amd64"
      sha256 "2d3f311353a8aa747669650228941f61259346a95e4262c1e407f972ca9006c4"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.60/plumber-linux-arm64"
      sha256 "3f9a3c0d314e064e26d9701350ed21e7029f4967130108e52727de14ab7edc02"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.60/plumber-linux-amd64"
      sha256 "dd84d1336456bb45966a96e3bd0f5a1c8cb808db4be26bba00f295c69201694c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.60", shell_output("#{bin}/plumber --version")
  end
end
