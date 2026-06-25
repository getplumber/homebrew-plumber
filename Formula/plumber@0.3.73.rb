# typed: false
# frozen_string_literal: true

class PlumberAT0373 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.73"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.73/plumber-darwin-arm64"
      sha256 "6c73a919dece0aa63fa69480d669e0c012f73be5face078a02eeacd8b3169ff2"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.73/plumber-darwin-amd64"
      sha256 "f79aa1571b8f6d825aeb94275ee017b194bb53cd3318814b9f4e0b4e0fea6a53"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.73/plumber-linux-arm64"
      sha256 "c4021036619248d1c84783190935a51ca8b20e59c036d3978f080a70f408960f"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.73/plumber-linux-amd64"
      sha256 "e5692d419af0d1c580dde4aa2ac1d722502b10196cd276baa86ff110d6539a94"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.73", shell_output("#{bin}/plumber --version")
  end
end
