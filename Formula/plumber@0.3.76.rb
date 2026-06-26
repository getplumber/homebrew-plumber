# typed: false
# frozen_string_literal: true

class PlumberAT0376 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.76"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.76/plumber-darwin-arm64"
      sha256 "25978ac765b70a19adada25f43520fd5ca9f169bc73bb8f5d50effe9253d0faa"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.76/plumber-darwin-amd64"
      sha256 "f93628e00cd0efa6df01a00700e3ee597b111fd3053986ea6e2d024462a55d86"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.76/plumber-linux-arm64"
      sha256 "dc8b2f95bf0a4f5cf9a294f7a5223c2ed88a359c5b2b516f8068c7f4d8cfaaed"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.76/plumber-linux-amd64"
      sha256 "847c071a95468939224f49de4731a6c5fa2d926446959b240dccf5ec7de96a8a"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.76", shell_output("#{bin}/plumber --version")
  end
end
