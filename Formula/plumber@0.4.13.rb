# typed: false
# frozen_string_literal: true

class PlumberAT0413 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.13"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.13/plumber-darwin-arm64"
      sha256 "98a7d4b847ffb733bfa7dcc58549697788e3ae8c2ced5d29039e6de998b5431e"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.13/plumber-darwin-amd64"
      sha256 "1c0413acb824685e4850183845f5e9e3ef8473fb642c913e0abef8d27dc75ee3"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.13/plumber-linux-arm64"
      sha256 "885f0d81f17fb12153aa6e0056cd3b35344252183faaf1094550ce72eb1627b0"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.13/plumber-linux-amd64"
      sha256 "b70b9081081651db84d0b6a43423a3e1135ee6b76051cbe8a6263f26daad7791"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.13", shell_output("#{bin}/plumber --version")
  end
end
