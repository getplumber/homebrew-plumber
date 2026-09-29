# typed: false
# frozen_string_literal: true

class PlumberAT0515 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.15"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.15/plumber-darwin-arm64"
      sha256 "fe46ecc714fdfef52f5a74849e1a4c30d440e0c6a37b08f6f3ec254cc8e4a3b7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.15/plumber-darwin-amd64"
      sha256 "df03bbeea36fc016506ea2c3f4b993270f0560b31e74621d0f755247c2ecec8a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.15/plumber-linux-arm64"
      sha256 "ec8749ee391c210145ed4b1905e6e3ddaf70a809f880195967d65816df128181"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.15/plumber-linux-amd64"
      sha256 "a8e241d0736654fe8ae5c321dacc9d65e70beb9d9e207b478f188d5221190d31"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.15", shell_output("#{bin}/plumber --version")
  end
end
