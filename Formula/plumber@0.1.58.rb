# typed: false
# frozen_string_literal: true

class PlumberAT0158 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.58"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.58/plumber-darwin-arm64"
      sha256 "0ca899ebd920b920a91ec8a68559eac84b63ea1f2d3bec414e1bad2b57c5dc30"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.58/plumber-darwin-amd64"
      sha256 "adc3806e6ba505902fcc84406d0d61e785bacd5c79dac4b01a7a2084ab6ce287"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.58/plumber-linux-arm64"
      sha256 "c39f948174302994de8d71b9bc9e3d3650f5d7c22513847ef77bcded9783cac2"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.58/plumber-linux-amd64"
      sha256 "e317096432dd6e49d208eb6e01a523a050e045c0cf3445617c338ed70bf55768"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.58", shell_output("#{bin}/plumber --version")
  end
end
