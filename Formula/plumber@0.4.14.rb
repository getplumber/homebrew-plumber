# typed: false
# frozen_string_literal: true

class PlumberAT0414 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.14"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.14/plumber-darwin-arm64"
      sha256 "f990e2a67b502b663bc65490cb07db2f93d36ee11ff8b4f287d3e0359c36a8dd"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.14/plumber-darwin-amd64"
      sha256 "8fb1340b6b3c263e407d8ab5e9c1f76c97a89fcce657fc0e4a25085783d64fe6"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.14/plumber-linux-arm64"
      sha256 "5632f0aefef26f47dd2bfca1f1b6df7edbaebcca0ef429887f9c73fd2a07da9d"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.14/plumber-linux-amd64"
      sha256 "41c604f78b614df0b7476f6b0cc448a34835c1feb0027701fcb0b4ebcbe4b4fb"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.14", shell_output("#{bin}/plumber --version")
  end
end
