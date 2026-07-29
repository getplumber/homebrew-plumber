# typed: false
# frozen_string_literal: true

class PlumberAT0422 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.22"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.22/plumber-darwin-arm64"
      sha256 "a163c6e137d35705981044ccb7c2bc48707f33265ddf61b115f6ecd330348a5b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.22/plumber-darwin-amd64"
      sha256 "49420fb5f06b910afac5bcd6776df1afe5fcf41398f08006700f4464036742a1"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.22/plumber-linux-arm64"
      sha256 "335fd4b554367190494fae12cb92207e2b651c64c68a79503988f38ae9331ac9"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.22/plumber-linux-amd64"
      sha256 "1e522fa26a9174de95c9d338e7dd9aeeffb3ff1d2a94b52ba4788c725defbb2e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.22", shell_output("#{bin}/plumber --version")
  end
end
