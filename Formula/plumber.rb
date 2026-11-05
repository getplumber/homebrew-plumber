# typed: false
# frozen_string_literal: true

class Plumber < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.21"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-arm64"
      sha256 "01c2764fd0b193fe804491925a6aa5f225452de52ae2fc7f81ce55a9ff4df598"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-amd64"
      sha256 "87de28116fbf4b28c5deac0378cc915dcab3ad15c621d5869bae8b87d73e6039"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-arm64"
      sha256 "3c1f36a8efac5d35a7f0054555b11edca4408b4e6d572b9428d5850b50d0a967"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-amd64"
      sha256 "9d6c6b0009f6dc92f4b1f9913bab3130d94350df17a7482ede0b586cebdbff24"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  test do
    assert_match "plumber version #{version}", shell_output("#{bin}/plumber --version")
  end
end
