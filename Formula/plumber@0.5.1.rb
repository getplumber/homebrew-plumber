# typed: false
# frozen_string_literal: true

class PlumberAT051 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.1/plumber-darwin-arm64"
      sha256 "ca4f7431f1f58b09ac232ef62b78d818a7da529b0568a898cb3cceba9299fed7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.1/plumber-darwin-amd64"
      sha256 "804c45fa72ce7e660d2044625700a2a11415b68a07e51b54e7b0e819e81aea33"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.1/plumber-linux-arm64"
      sha256 "c4d44817179496a03e2e51d16f6646ac1cd696acf17351bd43fa2bf5ea58f8a4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.1/plumber-linux-amd64"
      sha256 "d06abe190b5142a21353faf3adb74462387ec108ca78e8e3f4bff7b678ce0542"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.1", shell_output("#{bin}/plumber --version")
  end
end
