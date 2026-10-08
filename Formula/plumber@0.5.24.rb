# typed: false
# frozen_string_literal: true

class PlumberAT0524 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.24"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.24/plumber-darwin-arm64"
      sha256 "e22a32b3bc58dd9367e58fe293934e170022f7589e4e65d85db5417425de5324"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.24/plumber-darwin-amd64"
      sha256 "6e5d33a9eea94e3b504e71fb8819f1e497a6b4d21c2e6528155c13b7b464de99"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.24/plumber-linux-arm64"
      sha256 "4914ee421cbffcc8a87cc022f9dbce4735f03fd39f1a09934ea3924c6d200d16"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.24/plumber-linux-amd64"
      sha256 "64ae13607a7a0b22ba330cbc712f4c660b6371df67044858cb6eda7e8d3d56d1"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.24", shell_output("#{bin}/plumber --version")
  end
end
