# typed: false
# frozen_string_literal: true

class PlumberAT0381 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.81"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.81/plumber-darwin-arm64"
      sha256 "43af2d930c0b4e34ac790f24346ebb44e24c38f824dbe8042e379105804bf1cb"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.81/plumber-darwin-amd64"
      sha256 "0fe45e1948557f42056d08c72bd78442401d11233cfe8b5e95c886aac92e949d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.81/plumber-linux-arm64"
      sha256 "83f591bdb1f769c6d3588610c442841ddfa8b774dfdf79a6b5258a91cc2ca3b1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.81/plumber-linux-amd64"
      sha256 "d28a46c76f0b2f6e3ffdd0d25f7332c4d7b2ed76286a91b6d54c691dc3070b85"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.81", shell_output("#{bin}/plumber --version")
  end
end
