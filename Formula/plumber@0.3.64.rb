# typed: false
# frozen_string_literal: true

class PlumberAT0364 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.64"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.64/plumber-darwin-arm64"
      sha256 "66d0bcb824ce2bbaf86f0b6607496bf74985f595d8d86b244abe35f50d48faea"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.64/plumber-darwin-amd64"
      sha256 "4060d2caf9cb8aed0e94600295922cb491d4431371c25350ece685ba1f87ec3d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.64/plumber-linux-arm64"
      sha256 "796de0c635d5f366ca9055772edd166c3a9a1ce1a7736bb2a70e322ae359bebb"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.64/plumber-linux-amd64"
      sha256 "10eed86e6c6011ded7f87d94e1c909e5617d666a38455ecfff8845fd590e5a8e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.64", shell_output("#{bin}/plumber --version")
  end
end
