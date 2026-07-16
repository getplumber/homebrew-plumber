# typed: false
# frozen_string_literal: true

class PlumberAT047 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.7"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.7/plumber-darwin-arm64"
      sha256 "a56a7fc5b4f9522a72945b25e1a1fcdffa94c42078c88d76f19d9e527bb9cdac"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.7/plumber-darwin-amd64"
      sha256 "5a96e70d2937b4bdec4a3a785802106a607c426f4498e0098cff344c2ea93da7"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.7/plumber-linux-arm64"
      sha256 "3118fad9e3fa5dbfdf3615725214e0355803adaba67670d5d0e5cde67ff94042"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.7/plumber-linux-amd64"
      sha256 "302951cf96f6e9f821909dbd7c43d4dffbffae13d993103a54103505dbfd7cab"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.7", shell_output("#{bin}/plumber --version")
  end
end
