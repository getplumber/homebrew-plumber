# typed: false
# frozen_string_literal: true

class PlumberAT0388 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.88"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.88/plumber-darwin-arm64"
      sha256 "0d56c679c425ec564225139c02706c701f75eed5f41a19944d0313eee538eae1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.88/plumber-darwin-amd64"
      sha256 "5e8d974a5f04d05b6bdf043766f6eecb9956de066f122a0644e77cc73e62f5d2"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.88/plumber-linux-arm64"
      sha256 "3e0475d1912c6ae54d25e9c92bb04b1207947e262181df9853b469dae972bfb5"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.88/plumber-linux-amd64"
      sha256 "64b8892b0ee1df5041c7a69626cc1cada79e155ad726bb630b24847a851ec443"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.88", shell_output("#{bin}/plumber --version")
  end
end
