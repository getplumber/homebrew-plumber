# typed: false
# frozen_string_literal: true

class PlumberAT025 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.5"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.5/plumber-darwin-arm64"
      sha256 "d9ae5aa26336d87b001820360cf326e17c41715e9ba2b9354f644b252a353f85"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.5/plumber-darwin-amd64"
      sha256 "90f5ada3091ea8b4c63e69a52741c502ac3a6607ab52f34af5a988673ef103e9"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.5/plumber-linux-arm64"
      sha256 "c8dfe3f362d34837d6c7b8932d8aad7bf294e4a1a549ca9b3094750b198bd468"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.5/plumber-linux-amd64"
      sha256 "5f86f85366e948cd878614e83b53cf5b2dcd6b7f3b7030ea51bc169036b558a7"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.5", shell_output("#{bin}/plumber --version")
  end
end
