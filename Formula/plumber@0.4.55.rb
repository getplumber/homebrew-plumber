# typed: false
# frozen_string_literal: true

class PlumberAT0455 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.55"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.55/plumber-darwin-arm64"
      sha256 "6c3aafd031e8e947013ad395f59c9db7fb393f8f4ad86cb9af69951b15de6adc"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.55/plumber-darwin-amd64"
      sha256 "fa06292c47348008279ace160f5c8d49337fedcb702be7f2527bd5bd748b8fa9"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.55/plumber-linux-arm64"
      sha256 "a9d8fd07a91b9d60548c56411a13c6a7b66ec958418ee7159733774be3a7a38f"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.55/plumber-linux-amd64"
      sha256 "c869b1e7a45cd4bb3046e49eed86604ab73f6174dfba4ea4b18360df677f37a3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.55", shell_output("#{bin}/plumber --version")
  end
end
