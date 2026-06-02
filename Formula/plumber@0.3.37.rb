# typed: false
# frozen_string_literal: true

class PlumberAT0337 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.37"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.37/plumber-darwin-arm64"
      sha256 "debf45c87749eba907a79e53e27f49b37666ddc3e526849545e917a21a3a4a5a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.37/plumber-darwin-amd64"
      sha256 "6c94cbc8e70d0d465ecc11796edad5a51cdf57ac3d85083dfe0442ce70d79864"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.37/plumber-linux-arm64"
      sha256 "9a392e5be425a9ea5e1761a80922e723d5abfb8db7148cde9424bbced553c4f6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.37/plumber-linux-amd64"
      sha256 "1646530550b2943fcbe3e37d77bb62ee9742f29a5fd0fa608ae21618ba219a95"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.37", shell_output("#{bin}/plumber --version")
  end
end
