# typed: false
# frozen_string_literal: true

class PlumberAT0433 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.33"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.33/plumber-darwin-arm64"
      sha256 "fccaede6cb6f58cfa3f08381a65ebfa94423eb99bc3056a3874faa1b1914f903"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.33/plumber-darwin-amd64"
      sha256 "dc8b5b8e96ca0802788c89acc9180289c513b9e507a33047a6912728eeef88c6"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.33/plumber-linux-arm64"
      sha256 "2d266d6ad61e0a0d845921e024f235c446aba7e643f63e8479b713c64832dea8"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.33/plumber-linux-amd64"
      sha256 "39cebe8a050ded7463b271024f8ae4122239b65ad48d9c129f7448dd959a9964"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.33", shell_output("#{bin}/plumber --version")
  end
end
