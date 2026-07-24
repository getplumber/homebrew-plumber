# typed: false
# frozen_string_literal: true

class PlumberAT0416 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.16"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.16/plumber-darwin-arm64"
      sha256 "2594e68fa1268fe9a9ef91ffb2304d9c90e44df5211ec4750f8a2d23eed805e8"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.16/plumber-darwin-amd64"
      sha256 "5a8d45d7fa878c1ed504cc6a381ee231286757036b41e6719905c4b54c3589a6"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.16/plumber-linux-arm64"
      sha256 "b1e722f986e541be7a088c4f4b5bad8b061a8dcf0c597bfad15b36e75476772f"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.16/plumber-linux-amd64"
      sha256 "0247940d60dbe32cdeff5417a8600d78670c951e4e7a281965a05569eb65f490"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.16", shell_output("#{bin}/plumber --version")
  end
end
