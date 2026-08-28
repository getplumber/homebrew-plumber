# typed: false
# frozen_string_literal: true

class PlumberAT0445 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.45"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.45/plumber-darwin-arm64"
      sha256 "e0ab41b334a116923aa9e9673f13d6e4c9a021057883184bc2f8a5814cd52de9"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.45/plumber-darwin-amd64"
      sha256 "a64d0006af65de5c55706f665670c2400514b40bbebbc0a3f393463893602201"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.45/plumber-linux-arm64"
      sha256 "c0c9c029a6a9d781b9ee68d02fefaa1283d7e445c7522821be5f08919354c96c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.45/plumber-linux-amd64"
      sha256 "c2a517787d0b970659ad69aedc9db7afb9c6278e51d309b35a9ecb846b76ed1d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.45", shell_output("#{bin}/plumber --version")
  end
end
