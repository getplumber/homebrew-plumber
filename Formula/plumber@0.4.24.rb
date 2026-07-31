# typed: false
# frozen_string_literal: true

class PlumberAT0424 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.24"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.24/plumber-darwin-arm64"
      sha256 "8b56602a31a2ecf2503c92e12dde8b6173ac5b1bf3b8becc33da76480be763ce"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.24/plumber-darwin-amd64"
      sha256 "5a097c98d9c9c964171aaf34d6e1e3dcdb862b7deade5474bb6778f2953dd295"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.24/plumber-linux-arm64"
      sha256 "93f60dd80e223e2f5a53d3ba58f62e3bdc02b8abad5e015921b4d46af4e7b49c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.24/plumber-linux-amd64"
      sha256 "f6718f2840eb721114f08463a0e96f14f55e395d87257d3d79a00a5d90032774"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.24", shell_output("#{bin}/plumber --version")
  end
end
