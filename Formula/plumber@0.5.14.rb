# typed: false
# frozen_string_literal: true

class PlumberAT0514 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.14"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.14/plumber-darwin-arm64"
      sha256 "c7fbb6801d893901079e4992b0e6901bc9940fc5e6586c55fcd67112fa3d5b72"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.14/plumber-darwin-amd64"
      sha256 "b81f2bce8a3f5776b6114c7ea14a901e309d0392a7d0a9fe07e33189ee89956c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.14/plumber-linux-arm64"
      sha256 "374f49cc7ed27d73107de4d1c2eeeaf583e0a7700e80d8ac369c948d7ab31169"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.14/plumber-linux-amd64"
      sha256 "0b5c9197c490e959d1ee00cf13aa3af5533e5c4b75e8a5566e5b4ba5226bff21"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.14", shell_output("#{bin}/plumber --version")
  end
end
