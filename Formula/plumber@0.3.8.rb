# typed: false
# frozen_string_literal: true

class PlumberAT038 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.8"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.8/plumber-darwin-arm64"
      sha256 "b516123c3de0ea50414d9b8832d0286ee1e6e3fd70cf0a133e391605a015b515"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.8/plumber-darwin-amd64"
      sha256 "eb80dafea87a296cdc08999f84d1cd173180698860f8beebe8e47901decd4a30"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.8/plumber-linux-arm64"
      sha256 "7fc9293aeed4c874bc161c91e5a174ea52942a8d3863ac02aaec9c48d9caadf5"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.8/plumber-linux-amd64"
      sha256 "657d6ca8fbd3674d74937645a4aa0bfc2f2761053db64fa447b81b5b0714d5e8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.8", shell_output("#{bin}/plumber --version")
  end
end
