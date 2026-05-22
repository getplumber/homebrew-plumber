# typed: false
# frozen_string_literal: true

class PlumberAT0312 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.12"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.12/plumber-darwin-arm64"
      sha256 "41735093526dc1fd6e16baf71b7066edb00cef2de730321d5ffb13873a7ff925"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.12/plumber-darwin-amd64"
      sha256 "a805572faceda82c0852ff0bd16363fb3f8667b400f0ecac563d90b805943049"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.12/plumber-linux-arm64"
      sha256 "a1ec53036dc409dc2d8400d987aa1861d621f29fdf6d0ab89cc5592c67b1e382"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.12/plumber-linux-amd64"
      sha256 "52828acf03dc65b5876062e0309b93d8c84be8943e2e82c63dd9b3705525e1c4"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.12", shell_output("#{bin}/plumber --version")
  end
end
