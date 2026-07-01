# typed: false
# frozen_string_literal: true

class PlumberAT0380 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.80"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.80/plumber-darwin-arm64"
      sha256 "e5cb7678d407d006e0aa232b06f747ed8e16ccbd26a627d2d4af69e7914dc511"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.80/plumber-darwin-amd64"
      sha256 "21ed015a73b28e9051b296c61532ef7c23f97a9036d33b16636373bef81defea"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.80/plumber-linux-arm64"
      sha256 "4501fab8323e69ef382311fdefb4bee49541bec9642827bd770e41df02ccfa30"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.80/plumber-linux-amd64"
      sha256 "86015d49d162f20303dc2cdf7f2bf57b73d3c72a0aab27210c0ecb16335e4737"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.80", shell_output("#{bin}/plumber --version")
  end
end
