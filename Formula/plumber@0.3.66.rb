# typed: false
# frozen_string_literal: true

class PlumberAT0366 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.66"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.66/plumber-darwin-arm64"
      sha256 "e5cb043be9ec179771cb5e5f56e7885b07a90f08b59158ac1b88805abc165ae6"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.66/plumber-darwin-amd64"
      sha256 "478c5fe49a1858c878e012ae004e33aa10e968712ac09de298249ac9f4b9ab37"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.66/plumber-linux-arm64"
      sha256 "a8a8775242c4aa430063d94347c7befdc8d5f40a73aa2cd2ad1a42717ca2c1bd"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.66/plumber-linux-amd64"
      sha256 "a2557d165abc942e88fe229a5e1f27be5e4f0b0fee0a423378aa9178522484a3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.66", shell_output("#{bin}/plumber --version")
  end
end
