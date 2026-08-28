# typed: false
# frozen_string_literal: true

class PlumberAT0447 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.47"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.47/plumber-darwin-arm64"
      sha256 "de7040c5630bb5c08855ad7f0f9999fb3b2ee083b9227bc7467d866d9bd53e58"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.47/plumber-darwin-amd64"
      sha256 "3181158fcd6f520b6ac2870e6472dedf744b6ed4bafd35d7e577c22cf6e0b1e0"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.47/plumber-linux-arm64"
      sha256 "067746b3d4d691a7895c4345c87c8a54cc2272d531f37244b170f62596f09eb6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.47/plumber-linux-amd64"
      sha256 "9c6307cacc2bc72b5102f20992ab0384f1473994131575e2df339ff42b17a422"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.47", shell_output("#{bin}/plumber --version")
  end
end
