# typed: false
# frozen_string_literal: true

class PlumberAT0415 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.15"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.15/plumber-darwin-arm64"
      sha256 "0ff42ca8d0e9e4063cd091f4aff98a6fd925b6b359a5d9b397d08f640ab3705c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.15/plumber-darwin-amd64"
      sha256 "07811a60468467ba19cbe853c2dd6fda873ed3257cdc455b549e488954df7408"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.15/plumber-linux-arm64"
      sha256 "7c1b7f67529099149fe60bfcc9e97d6cbd7a0540b38816c2219c42c248deb991"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.15/plumber-linux-amd64"
      sha256 "2741a88c87f29eee417d76ecf02c2d378ce9ed111e4f945c8a30a7727e2355f8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.15", shell_output("#{bin}/plumber --version")
  end
end
