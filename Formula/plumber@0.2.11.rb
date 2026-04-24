# typed: false
# frozen_string_literal: true

class PlumberAT0211 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.11"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.11/plumber-darwin-arm64"
      sha256 "78b2a0c59764de6bed0cfeab67cb87e721eed991b7c65e683bf03e3b6e33be9f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.11/plumber-darwin-amd64"
      sha256 "66ca34b6b4207cbfce05cf2d3ec89e0dce01e4bb1493c7287e41fd8c02f04a74"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.11/plumber-linux-arm64"
      sha256 "86842e74af70bff814ff17ddcd8beec9ea0c1cb85c9baf7e7116a23b095fe813"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.11/plumber-linux-amd64"
      sha256 "6437b733ecc623bd75ba31f00ccb5292f71dd4cf62ccf416dc4f6866cfe18132"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.11", shell_output("#{bin}/plumber --version")
  end
end
