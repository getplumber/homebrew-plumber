# typed: false
# frozen_string_literal: true

class PlumberAT064 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.6.4"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.4/plumber-darwin-arm64"
      sha256 "297928134dbdb1e126d51a691a6053adef43eef3f04a9f2025af984611a1e76a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.4/plumber-darwin-amd64"
      sha256 "eda45a927893218efb4f2956f2294eb0e76db1b83db3887dfa7280a23b2aeb75"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.4/plumber-linux-arm64"
      sha256 "6ae92c43700d1846e73340c549e65b0b6e6b14acc0e1c20bf5e0ccdef6063a0e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.4/plumber-linux-amd64"
      sha256 "92e1cb3a636ca0d1653ba8420053af6008f3af753a9d60739d002013a4cbeaeb"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.6.4", shell_output("#{bin}/plumber --version")
  end
end
