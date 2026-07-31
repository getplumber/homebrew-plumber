# typed: false
# frozen_string_literal: true

class PlumberAT0426 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.26"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.26/plumber-darwin-arm64"
      sha256 "6ba6ff73f66d74da8894e546c42d761f7b94e893d6d0c22e5d774b1d20f2fb1f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.26/plumber-darwin-amd64"
      sha256 "1f13f5bd154225e569561afdc3797ceba984b102bd43d9b81d3e04af268c153d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.26/plumber-linux-arm64"
      sha256 "199a2205485d3545d39cb2ddbca7247e6f4bdc6989b77345499f77b1eaa2bc61"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.26/plumber-linux-amd64"
      sha256 "c11e7b7341ea8a2a6a531f2a5f085983143e6536ef049c52a024db4387883173"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.26", shell_output("#{bin}/plumber --version")
  end
end
