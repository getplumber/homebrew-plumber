# typed: false
# frozen_string_literal: true

class PlumberAT0441 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.41"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.41/plumber-darwin-arm64"
      sha256 "572eae43a2cffd0dcdc8a66158897de9429c6499763c732b447be41e051830ef"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.41/plumber-darwin-amd64"
      sha256 "e6a1ae2319514662aef2b98e9d4f399c08b2ca77aa4e26396e042fa5230200cc"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.41/plumber-linux-arm64"
      sha256 "9ee30121a7bda731e87bc9df58f1470bd8d97d0fae50c9dac9f8c4fd9586211e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.41/plumber-linux-amd64"
      sha256 "8f9726fbeea91f3a722c580d087786473aba2c1a3798fd6f17d4bd054cf0d999"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.41", shell_output("#{bin}/plumber --version")
  end
end
