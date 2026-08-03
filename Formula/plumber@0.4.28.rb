# typed: false
# frozen_string_literal: true

class PlumberAT0428 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.28"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.28/plumber-darwin-arm64"
      sha256 "59e299816275f03bf3bccd83d400b6240e97e7354558e8410223dcfac998af01"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.28/plumber-darwin-amd64"
      sha256 "2e511dced3a50ad2d17137adf475d048b066d9bb7d41b8ed977a17a37b8d5436"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.28/plumber-linux-arm64"
      sha256 "95ea77e59017f2354cc7eb95dde3b5fb69dadcf192ce06a9630202d62552d57a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.28/plumber-linux-amd64"
      sha256 "7863d640cbf727a327eef89445c0b53c3a0f5529e342c81e0baab6e4ce2207ad"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.28", shell_output("#{bin}/plumber --version")
  end
end
