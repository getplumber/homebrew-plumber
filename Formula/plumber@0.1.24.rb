# typed: false
# frozen_string_literal: true

class PlumberAT0124 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.24"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.24/plumber-darwin-arm64"
      sha256 "add7f9d2970d3bddb37ed887dfc6ed6878881ab097b59e8a04f0381389cb513e"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.24/plumber-darwin-amd64"
      sha256 "979da1b0862291c781023c50e444e760cf6997627a1866dcd33c67a1b519eede"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.24/plumber-linux-arm64"
      sha256 "956892382c82089fab47a1a97b72faaa88cd480def72f9f85c9533c616c6db7c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.24/plumber-linux-amd64"
      sha256 "f35221bf76a4a99e20d62c9fe6810e6bc49a59a40383dbda1e79d62bed2d2e78"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.24", shell_output("#{bin}/plumber --version")
  end
end
