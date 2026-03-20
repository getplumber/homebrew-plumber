# typed: false
# frozen_string_literal: true

class PlumberAT0172 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.72"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.72/plumber-darwin-arm64"
      sha256 "822c2f32acf65c6aec8e033d6c6c59535c46524ed4c50f85de74e2fb61f034d1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.72/plumber-darwin-amd64"
      sha256 "bb8990c36b2917fbef2fdeb530aaf06b67839eb5dcf75509c7b05ad84c7982a2"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.72/plumber-linux-arm64"
      sha256 "d3d41d8f8de122441cc71f03b4038e40d16040d78550239790d6ae67f840410b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.72/plumber-linux-amd64"
      sha256 "d0d2607afc3bb33631d04841b4b7f48c0711fe7144cae3384482ca1138fb8549"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.72", shell_output("#{bin}/plumber --version")
  end
end
