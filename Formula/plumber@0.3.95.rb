# typed: false
# frozen_string_literal: true

class PlumberAT0395 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.95"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.95/plumber-darwin-arm64"
      sha256 "82eddce4b82f8a9f162357ffd36e24844feb1f3cf709b37d0d838a1636696a26"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.95/plumber-darwin-amd64"
      sha256 "3634c6410221ef450df9aa217dce4470c56fd89e87f6306f910d5d514da60df7"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.95/plumber-linux-arm64"
      sha256 "c5328547281cc462c4c5ee68fc976c2173d88c84449ee42de994277728bfd37a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.95/plumber-linux-amd64"
      sha256 "c91bd08f1c5e0e06f7b10de32f4649114c6ee49703aa4760122721c275316998"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.95", shell_output("#{bin}/plumber --version")
  end
end
