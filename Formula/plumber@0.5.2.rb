# typed: false
# frozen_string_literal: true

class PlumberAT052 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.2/plumber-darwin-arm64"
      sha256 "b5b7a7727a9c333768be84dde89e2dc24fa6a6a35c45e06eb2cef62c0a3f9a29"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.2/plumber-darwin-amd64"
      sha256 "d987ba10fe584e4741d9b37cfa9fd53c85e24e2cc869da59dc49e99cc9c11ac8"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.2/plumber-linux-arm64"
      sha256 "b63be1ea3032b39e52bde5f6dc15d85d1f1110c7adaa9dacd834c6e94701fb0d"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.2/plumber-linux-amd64"
      sha256 "90890436112b67d867957dcddde024e275cadb9ae3e396028e818252052e2a10"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.2", shell_output("#{bin}/plumber --version")
  end
end
