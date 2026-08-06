# typed: false
# frozen_string_literal: true

class PlumberAT0431 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.31"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.31/plumber-darwin-arm64"
      sha256 "ad93e2d19e2d99813f72f97ced16ef5ba7ac7a838eb67817faceaa43e6c65e93"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.31/plumber-darwin-amd64"
      sha256 "ddf8fe19adc94be181d522f07d0d4522b986cba6c2e1a6430eca86670af7fe49"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.31/plumber-linux-arm64"
      sha256 "c57fb2c5ac84706ee567e1b7c2f406f0b564aea00d8e957aad87b730fdace9aa"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.31/plumber-linux-amd64"
      sha256 "2be44ba54cab97aab32a448d17ae1c1d57fe56bd97183ee12bd009836e5447fd"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.31", shell_output("#{bin}/plumber --version")
  end
end
