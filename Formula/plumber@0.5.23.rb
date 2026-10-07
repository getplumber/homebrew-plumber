# typed: false
# frozen_string_literal: true

class PlumberAT0523 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.23"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.23/plumber-darwin-arm64"
      sha256 "2979e2d3b128c80b5956ee2384da72b3a00508c0c91978c2db6c2f64b4b26dcc"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.23/plumber-darwin-amd64"
      sha256 "fd149b720bcf22314940bae66f754a8ff9ce02e287691b1997b6a7037dbc9a7e"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.23/plumber-linux-arm64"
      sha256 "b0940f66b916f9412de8d4b173ac60ae63b393a869f126521edc7ec4507db52a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.23/plumber-linux-amd64"
      sha256 "7d428c0a6c14e4e2ff3c61dc7295938cf2c9a7e5c1c84d247c5ae6c43aee8148"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.23", shell_output("#{bin}/plumber --version")
  end
end
