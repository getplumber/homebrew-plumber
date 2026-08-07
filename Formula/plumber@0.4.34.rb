# typed: false
# frozen_string_literal: true

class PlumberAT0434 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.34"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.34/plumber-darwin-arm64"
      sha256 "fd177a66658474b4ef0917ee031f67a9f09b1846724c439c0831ae8c43536ce8"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.34/plumber-darwin-amd64"
      sha256 "119afa4b9f7ba76dee3658bdca9ffe62f705872ea6c2e23cfe77b0f39f99d7d0"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.34/plumber-linux-arm64"
      sha256 "f40810d89b8317b03f30673ed23f86cda9d94b70f2b7cbb51e7d6917154b52a7"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.34/plumber-linux-amd64"
      sha256 "8efafc8f22f179b8f86d28b948cea264308a04936038cdae03e1093322851364"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.34", shell_output("#{bin}/plumber --version")
  end
end
