# typed: false
# frozen_string_literal: true

class PlumberAT0710 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.10"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.10/plumber-darwin-arm64"
      sha256 "5511cc8a1a6a0b4994c942a2ea02e2c04f8584522ea858603630e33e6061d79a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.10/plumber-darwin-amd64"
      sha256 "29957a462d46b43c0a04d8c5cf70f8a39741c02ffe475378fcfbc3b1503b4a66"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.10/plumber-linux-arm64"
      sha256 "3dc92a9614823139758e5036ebe1ed8df1bdd8e3184c9ea78228478ffe39e06b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.10/plumber-linux-amd64"
      sha256 "f73e711ad5e22a08cad83b95069d7a927971455ae451ab8cbdf45ac29002dd33"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.7.10", shell_output("#{bin}/plumber --version")
  end
end
