# typed: false
# frozen_string_literal: true

class PlumberAT0338 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.38"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.38/plumber-darwin-arm64"
      sha256 "9b2f56d2fb76af78b1aee713ad26bdf90e95dc199d9a8c5987d36e651bfda9c7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.38/plumber-darwin-amd64"
      sha256 "5f3990e506c7bfa0fdf9658f5c042a61fea41f9be4902174ae138768118f644b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.38/plumber-linux-arm64"
      sha256 "037d21585645b217089a84493ce3647deb78444098ec9616c6b1afa9833a7154"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.38/plumber-linux-amd64"
      sha256 "a6e4a5c52a424e352c0c547d9023d1a80780300cff9af37896f3205a2019fcfe"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.38", shell_output("#{bin}/plumber --version")
  end
end
