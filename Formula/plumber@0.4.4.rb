# typed: false
# frozen_string_literal: true

class PlumberAT044 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.4"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.4/plumber-darwin-arm64"
      sha256 "03d3cf8e4e7ab032877952735d0cdcdec0143b8362a019f4e3fcf10bab01babd"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.4/plumber-darwin-amd64"
      sha256 "0c3ec04f91720cf3b60f902b7f7ff3185287891db4b737e5ff52f49728c12f2a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.4/plumber-linux-arm64"
      sha256 "a225f045ee927de3a8d20c9ec981c10a4eb9bbe32e1aae89f624c13af945b9ae"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.4/plumber-linux-amd64"
      sha256 "74743a6d8621eabe2149f8a714afa37943df88c4f785d0c696e65e40f537cfc5"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.4", shell_output("#{bin}/plumber --version")
  end
end
