# typed: false
# frozen_string_literal: true

class PlumberAT0399 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.99"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.99/plumber-darwin-arm64"
      sha256 "a219dd7cad1b489741c46bba0add509cbf07d87e1ec0e2d3bad2e71f585dd517"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.99/plumber-darwin-amd64"
      sha256 "eddcd105812cd1ce40feb5074b404af09dc08e0a9058305f1969021da424557b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.99/plumber-linux-arm64"
      sha256 "26f6e719a2b835f8c202ce81b1eeb735d10e05a796f0153ac104aa938c2e6f63"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.99/plumber-linux-amd64"
      sha256 "3aeeb9a18160f0b0aa353cd050e25f8a572df118ae7ecaaa0bb9a98583566480"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.99", shell_output("#{bin}/plumber --version")
  end
end
