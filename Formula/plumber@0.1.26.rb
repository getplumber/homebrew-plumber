# typed: false
# frozen_string_literal: true

class PlumberAT0126 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.26"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.26/plumber-darwin-arm64"
      sha256 "7834e8d2465a11db334de9318159cab8bffff2bd4bf6a6547708ecf166798737"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.26/plumber-darwin-amd64"
      sha256 "ebb4046b207b88a1523c4f588d58374ff9c065ae144dc00737154151638d9483"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.26/plumber-linux-arm64"
      sha256 "aa6aa237ed8189a75a76198db8242561db53b3302da299c5c27d280c72c217a1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.26/plumber-linux-amd64"
      sha256 "bc4c68a88c4b46601a2bee1e94949012cd437d13e19527863a07abeaeebc13cd"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.26", shell_output("#{bin}/plumber --version")
  end
end
