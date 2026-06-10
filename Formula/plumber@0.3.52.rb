# typed: false
# frozen_string_literal: true

class PlumberAT0352 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.52"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.52/plumber-darwin-arm64"
      sha256 "291ddd012ff1673eb7a63946834744722d738754732668839b540ec5b5af2bde"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.52/plumber-darwin-amd64"
      sha256 "1b615d3d571dd376e2bae48e859dcf9da9d4247a2fb1be162adb1aa5cbd00f5a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.52/plumber-linux-arm64"
      sha256 "d56deab4ba876f13920ac7d899d4172e2c00b0515cf30209bc116e9bddf5911e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.52/plumber-linux-amd64"
      sha256 "122e2fb7311418d5f91c6feb79fde40956cfdf8285dac08df46443c8c2a381e7"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.52", shell_output("#{bin}/plumber --version")
  end
end
