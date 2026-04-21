# typed: false
# frozen_string_literal: true

class PlumberAT027 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.7"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.7/plumber-darwin-arm64"
      sha256 "03e85d5e13b3458e5bd27921df35c3e80416e1cd5f828a98d1bfb6cc39077f4e"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.7/plumber-darwin-amd64"
      sha256 "d499aa17ed7ad551399ab5c1bf2b04902a57656397679dbe7e75383c20b0e973"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.7/plumber-linux-arm64"
      sha256 "f752baed2c6bec255014a189518ff49d785de5fb9fee994ce1a739d245e0a8a8"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.7/plumber-linux-amd64"
      sha256 "e552f9c1217918487727c8a7d9e066c3cce3eaf6669ebfdc0548a2e662585a06"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.7", shell_output("#{bin}/plumber --version")
  end
end
