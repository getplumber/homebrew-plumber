# typed: false
# frozen_string_literal: true

class PlumberAT0419 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.19"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.19/plumber-darwin-arm64"
      sha256 "2c85ce6f166f1abe99ef76dd019d90a890d06b5fed66ca40d30eaf03af344380"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.19/plumber-darwin-amd64"
      sha256 "d29b29600faea1106b60793ec406f15e08b74fe5ac43df67e1b37ec6fa587718"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.19/plumber-linux-arm64"
      sha256 "7ef418dc5dab05a580b55a943a281d6b54d04bbefd8a033ebe0821d931676e15"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.19/plumber-linux-amd64"
      sha256 "2ae7a138591e1c88998c81e3d26b0dd62bcdf04c8e3f3b0a6cf69dbb1c95b8f2"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.19", shell_output("#{bin}/plumber --version")
  end
end
