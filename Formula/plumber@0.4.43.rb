# typed: false
# frozen_string_literal: true

class PlumberAT0443 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.43"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.43/plumber-darwin-arm64"
      sha256 "d8db1c34563d6c5eac46e2f573d67b9794acf43ad47e2a0b44d0791f69b17d35"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.43/plumber-darwin-amd64"
      sha256 "a6bf0cc9f11317da5e0d7fc0d521396c5a9935f16c89c4090b07608d41d2b23a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.43/plumber-linux-arm64"
      sha256 "3a9f84184841cfa54c6cfe6190153f813f5ee4c821ccb1c7b5dd7c39bc1f5b5b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.43/plumber-linux-amd64"
      sha256 "67096e977300616366212f6b3d6df499a3778941d3a735c4158234cda5f264a7"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.43", shell_output("#{bin}/plumber --version")
  end
end
