# typed: false
# frozen_string_literal: true

class PlumberAT058 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.8"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.8/plumber-darwin-arm64"
      sha256 "5f1359dc2fa511abd1a6a0b9bb61dace6e917ea090496030cc2ee4f0338503fa"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.8/plumber-darwin-amd64"
      sha256 "0fc9665680d1b3d75f3000906c9ed87c486bbf0151ac402c6abc2038181e41f3"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.8/plumber-linux-arm64"
      sha256 "12636efc253cb041bd7b5ea3f7f993a9b6c04b296bb31a24cd8a9a31f8bbf204"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.8/plumber-linux-amd64"
      sha256 "1924400dc33a367977c6200e9ef3acd66a5eed1925019755705de17c3ee36750"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.8", shell_output("#{bin}/plumber --version")
  end
end
