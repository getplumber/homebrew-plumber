# typed: false
# frozen_string_literal: true

class PlumberAT0439 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.39"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.39/plumber-darwin-arm64"
      sha256 "ac50faec40f68721d0b695c3a09d2dbbe37145c6ed78e1b15c639f08f01374c2"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.39/plumber-darwin-amd64"
      sha256 "47fed330beaa8feba90781e6d5116e95089fc79bf59b74890a94b5cccd10ae9d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.39/plumber-linux-arm64"
      sha256 "93deb3d40fe7f1103b96b67c4bfb8dad1e859c8e106676b5591a198a4ad4b040"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.39/plumber-linux-amd64"
      sha256 "20ea4bb761980cb59e189f047907fbce4592f84193d1896345cfe94d36d67080"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.39", shell_output("#{bin}/plumber --version")
  end
end
