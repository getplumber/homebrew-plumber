# typed: false
# frozen_string_literal: true

class PlumberAT0452 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.52"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.52/plumber-darwin-arm64"
      sha256 "7f5b3ef026d592ff4361182ff8278c0f937dbad2b85a07a07d8a49c3b5fc4f10"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.52/plumber-darwin-amd64"
      sha256 "5a3833438a73b8d2fc6d03a0f6ac80c63308c84b99ca4d063ad4aa675c60fc7f"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.52/plumber-linux-arm64"
      sha256 "b399dc69bdd833bed9fc106ca1956a93c947af246ae25cd3d91c4c07db668007"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.52/plumber-linux-amd64"
      sha256 "fb0943f49634da7678456ab428fb87e884c23af0b457d8ce9854eaa3f27700f7"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.52", shell_output("#{bin}/plumber --version")
  end
end
