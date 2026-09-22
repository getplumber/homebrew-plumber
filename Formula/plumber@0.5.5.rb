# typed: false
# frozen_string_literal: true

class PlumberAT055 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.5"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.5/plumber-darwin-arm64"
      sha256 "a3529ac03fbe0306dda289d2dfac41352ed8a4b7959bc45d7a25a6225be87f87"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.5/plumber-darwin-amd64"
      sha256 "1740e874a1cc9e6b66ba45227d159ff99bc5caeb82205a86f0d568d387f85310"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.5/plumber-linux-arm64"
      sha256 "0d882af7641d9197b86ea5b317df354fe82696c82dec029ba6749ca82f69ec12"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.5/plumber-linux-amd64"
      sha256 "a498e65624ae4c5be86bb4543f6b94047f9fa6dd775b7f66197bd864a82a81e4"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.5", shell_output("#{bin}/plumber --version")
  end
end
