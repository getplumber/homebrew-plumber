# typed: false
# frozen_string_literal: true

class PlumberAT0711 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.11"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.11/plumber-darwin-arm64"
      sha256 "051b9f14b9a3fd1348b10375a859b6ea6744cdcf7a9003740802ea7fa8ae55ef"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.11/plumber-darwin-amd64"
      sha256 "2efec29d97bd133ce74987ae58da8883c5cc447708d69592969d9e4f9b760bfd"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.11/plumber-linux-arm64"
      sha256 "62fc24783340a9e653658dfdb1ddbb29d84adfe2185213e22116fdae63f9bb95"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.11/plumber-linux-amd64"
      sha256 "e60beab62e1136a42cc6b466a76614788694bb4abfac2ce9be44df3b4f43d6ec"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.7.11", shell_output("#{bin}/plumber --version")
  end
end
