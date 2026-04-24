# typed: false
# frozen_string_literal: true

class PlumberAT0219 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.19"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.19/plumber-darwin-arm64"
      sha256 "4b63b1113ad10b2cb57245ab874ce9cf10822f4f1a073f1cace5b641edee4b5d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.19/plumber-darwin-amd64"
      sha256 "18daa6bbfcb50daba7aa26db0789ca9808cee3098985e2b78a0ce08d94d672b1"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.19/plumber-linux-arm64"
      sha256 "08e10e7a64e4a9321020305868c2bc15e56ac1bb9def419fcdffa4017778071f"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.19/plumber-linux-amd64"
      sha256 "d354fad17d9e46bcb2e920500afbcdce0bb866798b21c9e2316673fff4d589d6"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.19", shell_output("#{bin}/plumber --version")
  end
end
