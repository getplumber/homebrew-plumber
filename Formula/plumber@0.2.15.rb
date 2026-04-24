# typed: false
# frozen_string_literal: true

class PlumberAT0215 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.15"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.15/plumber-darwin-arm64"
      sha256 "707e040654195a65a01f6e6335b1c109c3154c73a0cbdd40279d338cc43de3e4"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.15/plumber-darwin-amd64"
      sha256 "f1d04567647f7924b8d8d50ccecbe7382b610bdfe028f79ffa7d996d0c36ee6d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.15/plumber-linux-arm64"
      sha256 "82219b0b9d800cf391c6a9ab1a330e979be4ec199dc832a7f94bb3b42c1305c7"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.15/plumber-linux-amd64"
      sha256 "0dc828fd4c3f4549f80ee8a459cd1fd32ebd85c597d93db446fdebfebd84b371"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.15", shell_output("#{bin}/plumber --version")
  end
end
