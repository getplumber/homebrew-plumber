# typed: false
# frozen_string_literal: true

class PlumberAT0516 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.16"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.16/plumber-darwin-arm64"
      sha256 "a225d7cbeef967146f03c7bad4bb7ad9b14a812846bbf6f7520fec31a31ac93f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.16/plumber-darwin-amd64"
      sha256 "cc0272a36784ffdba4bd895ec132b26b7365cb0b4fd5fac4095ed96d66edb95b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.16/plumber-linux-arm64"
      sha256 "71b66c13703e258ec89ec4c57c1057614f9f8d77616e96fa24ef7a6c703485bd"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.16/plumber-linux-amd64"
      sha256 "890a470f7e37bfcb139b5e89e31179de5e53eb25ce98c7a342e1a363fe11d109"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.16", shell_output("#{bin}/plumber --version")
  end
end
