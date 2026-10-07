# typed: false
# frozen_string_literal: true

class PlumberAT0521 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.21"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.21/plumber-darwin-arm64"
      sha256 "7bf5351d139360ba31e90f0c23886d9dc5c089fff7b2c04806d6ebd71f7f4190"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.21/plumber-darwin-amd64"
      sha256 "8127cc70f9273f34c84b852cb142f8b2af994c4b5f1bc63152cc40da7af96636"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.21/plumber-linux-arm64"
      sha256 "75ffebbf380f6ee5d30a4d20dd403db4129b8cd4cac0413088a716bdd308d059"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.21/plumber-linux-amd64"
      sha256 "8e7d751fcb0b41b0b5e154dead33109e7fdfcf361f206a5dc319d7ffb3aa3a24"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.21", shell_output("#{bin}/plumber --version")
  end
end
