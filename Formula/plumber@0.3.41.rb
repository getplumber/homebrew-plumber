# typed: false
# frozen_string_literal: true

class PlumberAT0341 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.41"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.41/plumber-darwin-arm64"
      sha256 "8acf47e7fe9d2fd6e1a725bb0d65582ecf328381b0329af87e5131d8103439f3"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.41/plumber-darwin-amd64"
      sha256 "812243d560f278c05c74d053f9ed576e2769c7350d9da2874160be81cf4ac7dc"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.41/plumber-linux-arm64"
      sha256 "77e489c68194b1ac14ebf47e02a3674c429d89ca954184ac19ea0a297d9c1de4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.41/plumber-linux-amd64"
      sha256 "abe62df55c7c9730a82fa8da5dfc5e0f71bc1807c363ad795be327114c1cacd9"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.41", shell_output("#{bin}/plumber --version")
  end
end
