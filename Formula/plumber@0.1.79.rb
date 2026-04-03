# typed: false
# frozen_string_literal: true

class PlumberAT0179 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.79"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.79/plumber-darwin-arm64"
      sha256 "12f5cc5604776ab2c58f1b866b337b26b8cd4b75e21a646e9bf11cd32916f0cf"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.79/plumber-darwin-amd64"
      sha256 "734ec83a0a509ba5c9fcc41c2672013c754ede1f01ecc34af44fb9a8677abdb6"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.79/plumber-linux-arm64"
      sha256 "05fafdeaffac8f95ec93dde1997a718ae586f0d1447e2cc6eb971982d4d46358"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.79/plumber-linux-amd64"
      sha256 "d2de24f54d5930673bb1e9b95accab4328f3b9c78af9aeb781e1efe3ce25c20b"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.79", shell_output("#{bin}/plumber --version")
  end
end
