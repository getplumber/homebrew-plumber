# typed: false
# frozen_string_literal: true

class PlumberAT0438 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.38"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.38/plumber-darwin-arm64"
      sha256 "790714a53a8d58aad0beb8f7d7e2c3f3a45308dbd85e353140294bd2a36cce21"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.38/plumber-darwin-amd64"
      sha256 "17608b21550943ee5ec107eedba173bc9c5781cc28bced4c01dfe4fa21aa7d83"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.38/plumber-linux-arm64"
      sha256 "9a7c554ed1cdba17d1587293836020757164935062bca8d67b60a7663d8f9f54"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.38/plumber-linux-amd64"
      sha256 "3c3d8eb52e548b41788df10fce2107f0047aa043b81d387b539b460e35e5e5be"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.38", shell_output("#{bin}/plumber --version")
  end
end
