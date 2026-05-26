# typed: false
# frozen_string_literal: true

class PlumberAT0326 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.26"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.26/plumber-darwin-arm64"
      sha256 "2f2cead46cc12df14116392b94a592322f63cac400e1c7c8a5413685cbba8ab2"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.26/plumber-darwin-amd64"
      sha256 "c2278fca9495163f069d99c0572268629951a8719621b8a6e67f099cd631fdf4"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.26/plumber-linux-arm64"
      sha256 "db6b75fffb3d0f3a29c5ce3b31e7d4a93d8d3cc9d503e659196dedc2e2357b7c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.26/plumber-linux-amd64"
      sha256 "e0d3c29727ac51a351347020e5471a5d0f813fff186d8cb67c58352686b4c376"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.26", shell_output("#{bin}/plumber --version")
  end
end
