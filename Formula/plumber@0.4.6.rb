# typed: false
# frozen_string_literal: true

class PlumberAT046 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.6"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.6/plumber-darwin-arm64"
      sha256 "32a2a3890b179856dfefcfb2b9da994435909e82b6cdd79dc23cf9d15adb9f3d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.6/plumber-darwin-amd64"
      sha256 "249df8d7ced9e5471d3c4e9f7d0dbbdebcd247a8a9e59dd7715b98b5493e56b8"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.6/plumber-linux-arm64"
      sha256 "2ec8bf0e3e54310d849282df3ceff0f9ea5bae5df5b7dd8484fa6febba7bdc66"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.6/plumber-linux-amd64"
      sha256 "1a2c74e650ad91bf2e140d2b3b138fe8258b3e2fc60a7fcb7f13be0000ca89f2"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.6", shell_output("#{bin}/plumber --version")
  end
end
