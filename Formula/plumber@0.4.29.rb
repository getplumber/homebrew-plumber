# typed: false
# frozen_string_literal: true

class PlumberAT0429 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.29"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.29/plumber-darwin-arm64"
      sha256 "a9af850a98b675628b539826d24d3b2efd7d9816123ec4748a9cc94e24656add"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.29/plumber-darwin-amd64"
      sha256 "194b62e46cc0ee98e0fd0802169dbdfea1d7546e6654204e7a408a5d1632b78e"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.29/plumber-linux-arm64"
      sha256 "301df505fc944145999421afd6ab9bdc8c4041a71c3ebbbcc50729185db1f5c6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.29/plumber-linux-amd64"
      sha256 "1bb3767cf72b4071c8f16bfd940ba21332372dc6ab6629b1d32383d15dd91d2e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.29", shell_output("#{bin}/plumber --version")
  end
end
