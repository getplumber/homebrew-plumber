# typed: false
# frozen_string_literal: true

class PlumberAT0334 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.34"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.34/plumber-darwin-arm64"
      sha256 "3e72756d5763c384a2b0e306af843d05537e655f4fca4a8f8dde5d8cb081d306"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.34/plumber-darwin-amd64"
      sha256 "9b461b0e9c8b042d2442b7b1bfc8a0d5067f0b8480567845fe25e8d547ead96c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.34/plumber-linux-arm64"
      sha256 "7295ebd1f8c30d91ca8792bd22efa6bdc4b5e2bb6ff8087137bf448e41d76395"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.34/plumber-linux-amd64"
      sha256 "456910947941d51348be56312e87fcc716e41103938319dd067b05fb31446ff4"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.34", shell_output("#{bin}/plumber --version")
  end
end
