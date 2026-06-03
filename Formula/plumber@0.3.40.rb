# typed: false
# frozen_string_literal: true

class PlumberAT0340 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.40"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.40/plumber-darwin-arm64"
      sha256 "f1f186989c31af133154490d7c2f5c93f068b9947d2a9a9458a32dcbcbd2b4df"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.40/plumber-darwin-amd64"
      sha256 "cb69d44c0eed29c3b33d0188aea20eb762fc94e7116303042e538f2f030fb06b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.40/plumber-linux-arm64"
      sha256 "5981d851e183cae115381561a8d1d62be0b8ebe006b3267a8546a9833c0c8f15"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.40/plumber-linux-amd64"
      sha256 "cb0e8bcb1482e20851071a671e128eab12fc9f2619c4425f918768af2729357d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.40", shell_output("#{bin}/plumber --version")
  end
end
