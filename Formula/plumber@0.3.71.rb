# typed: false
# frozen_string_literal: true

class PlumberAT0371 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.71"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.71/plumber-darwin-arm64"
      sha256 "411e7e59ab08e5e3857ef8408212b21d429b67da3b70b44f2cde8708748a61f2"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.71/plumber-darwin-amd64"
      sha256 "6f99ee7478cdc88871ca7bc6e67581dfe1461490b92e92e53a44716d4464c3bc"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.71/plumber-linux-arm64"
      sha256 "369c8f56c9cc0920f496329f88e6721f7e57d7834651d385c62121e76b727165"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.71/plumber-linux-amd64"
      sha256 "00d05d027bdeb9a7caa0c414e56c0c8752cdd593e30251d324f25b9928bf8c45"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.71", shell_output("#{bin}/plumber --version")
  end
end
