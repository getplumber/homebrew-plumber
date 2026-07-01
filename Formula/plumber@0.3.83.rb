# typed: false
# frozen_string_literal: true

class PlumberAT0383 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.83"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.83/plumber-darwin-arm64"
      sha256 "dc52753ba9cc774da0e48a90de49735c00622393279e6f8fed5e6f508510a0d4"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.83/plumber-darwin-amd64"
      sha256 "57e88fb32cabae699e2542b4210d0ace627ed7681ac33c122684a1510e9b3772"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.83/plumber-linux-arm64"
      sha256 "a70e345f7e74edaea7d062c4ee0394ed850d9471599bd18bb4d7982fd9fa7965"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.83/plumber-linux-amd64"
      sha256 "cafdeead4d00b2873532e41c6ee3ca9605e2990506fb7b410e1b42bbc83b71d5"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.83", shell_output("#{bin}/plumber --version")
  end
end
