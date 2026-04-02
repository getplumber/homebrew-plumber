# typed: false
# frozen_string_literal: true

class PlumberAT0177 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.77"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.77/plumber-darwin-arm64"
      sha256 "abaab3340234ac449e4b1b46d499aa42a9ef4bafeb1b86b1b13f351f82115d93"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.77/plumber-darwin-amd64"
      sha256 "21331d733e06e8be01714acd0ed9b70bb0a0c8a4e8c91eac7a82605609497ae1"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.77/plumber-linux-arm64"
      sha256 "858f547aeda795264179546923c51cbc5fa22fedc21dfd90c63a6e8592774881"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.77/plumber-linux-amd64"
      sha256 "e150283a7164293a8835bba55253ee7634a261a286e0861319e0f040ac88f31e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.77", shell_output("#{bin}/plumber --version")
  end
end
