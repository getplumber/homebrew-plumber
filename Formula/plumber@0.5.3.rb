# typed: false
# frozen_string_literal: true

class PlumberAT053 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.3/plumber-darwin-arm64"
      sha256 "401433c33fb59d646f4de36565207deffad45ffad5df455804ed1ae088800026"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.3/plumber-darwin-amd64"
      sha256 "820f2c850264bd3ea65ea0bef05801baf7f6ceecd95d47d68c3e6a6c2be31f0f"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.3/plumber-linux-arm64"
      sha256 "6a82ee55548b82c545bc53a9131bd1ba91679d8c27d4b19226bc7730b46266b1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.3/plumber-linux-amd64"
      sha256 "455bbff702d5ad9e2cf30e691ec457eb36e1ceb0b4a92dee72479453c68c8205"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.3", shell_output("#{bin}/plumber --version")
  end
end
