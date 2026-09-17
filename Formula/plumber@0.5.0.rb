# typed: false
# frozen_string_literal: true

class PlumberAT050 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.0/plumber-darwin-arm64"
      sha256 "c70ae491b149dc875b0d8a2fb421cfffb2be98b330a48020b0eb85f6f54c589c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.0/plumber-darwin-amd64"
      sha256 "bf9991e5ad35e618c4f2cc8897a21fc6dafca7a4534ebf2a6fc26b78b96dfdfd"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.0/plumber-linux-arm64"
      sha256 "c26569aa72fb2aa1e363d44f9435d55dd63f3dd8ee3d824d9f032bff82875d1a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.0/plumber-linux-amd64"
      sha256 "e34219d497dac73d216c36127d9d45870b7f56248605e89ebfc068c6fbfc9592"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.0", shell_output("#{bin}/plumber --version")
  end
end
