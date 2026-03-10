# typed: false
# frozen_string_literal: true

class PlumberAT0161 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.61"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.61/plumber-darwin-arm64"
      sha256 "27627d07b5f00ac1d9aed77771517c77e95ed6a2e822fcf16fbfe1d0495cb6f3"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.61/plumber-darwin-amd64"
      sha256 "a8cd44bd6007395a15e310ca63981355faa2d21ae1e12ac7b052a308ac11e794"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.61/plumber-linux-arm64"
      sha256 "bfd4fc0b2e5fd7baa0608ca66b990abd533ab6bfd0c9de8c75c6e5c3140816e5"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.61/plumber-linux-amd64"
      sha256 "46436d1d5db07330315cac4e007add36f8d77632f56fa6ac3c156e00408a2f29"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.61", shell_output("#{bin}/plumber --version")
  end
end
