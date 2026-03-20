# typed: false
# frozen_string_literal: true

class PlumberAT0171 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.71"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.71/plumber-darwin-arm64"
      sha256 "9bd5e51658adb5e05b8f2727ebaee2e973f5c07698c18a0406c7801438c2bce1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.71/plumber-darwin-amd64"
      sha256 "4e594d472c23fc5285dbf3ff22f6415e5902e42775e631182da871d19829e271"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.71/plumber-linux-arm64"
      sha256 "3e50bfbe77abf411fa387669b64133816e90397dbb581ed326fee6d686b01fcc"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.71/plumber-linux-amd64"
      sha256 "ff933a6b263d9ffe8c0e78e0cd8644e5c1dfa8393242096aa00f5d19a31c7ff2"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.71", shell_output("#{bin}/plumber --version")
  end
end
