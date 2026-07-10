# typed: false
# frozen_string_literal: true

class PlumberAT041 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.1/plumber-darwin-arm64"
      sha256 "d0e21618116b598b84c8adefbd4bdf6de2073c2ab72011046bb5edfaac83aa1a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.1/plumber-darwin-amd64"
      sha256 "203c29ad1b0f615da748b0bdbe60afa3e14c328e219e89cec7bba0e626108878"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.1/plumber-linux-arm64"
      sha256 "2b263f7ac13e8b5192dfe29e130da08e683c7c7b25d9fd1cf833994cffdae962"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.1/plumber-linux-amd64"
      sha256 "40a6e38473473dc1c115629799f990f2c7c7a470aab1f85cb7523bfda6a0486d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.1", shell_output("#{bin}/plumber --version")
  end
end
