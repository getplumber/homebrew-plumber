# typed: false
# frozen_string_literal: true

class PlumberAT0513 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.13"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.13/plumber-darwin-arm64"
      sha256 "58a85464b70e13b0028d6359abaeca37bc58051e6caf4032171519355d96f00c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.13/plumber-darwin-amd64"
      sha256 "d91cf3543978ddebf4ac10194300d65c590345e2fe18f012096804f6229ba524"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.13/plumber-linux-arm64"
      sha256 "e47df1ddaf9deda137e373604d56fdb71e463cf5f3a767169b500f39826d5d06"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.13/plumber-linux-amd64"
      sha256 "8003f1aa719fe7437d6035ea1bb303209b84b18c21b71aecca74be58bab1a0f8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.13", shell_output("#{bin}/plumber --version")
  end
end
