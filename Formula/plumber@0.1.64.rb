# typed: false
# frozen_string_literal: true

class PlumberAT0164 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.64"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.64/plumber-darwin-arm64"
      sha256 "db3c405e3c88a7ea028d2022806a20e763147b2c407f2bf64c3c0923240ae4f1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.64/plumber-darwin-amd64"
      sha256 "3924122cfbc3a9df20627563e3bc3d6bface38d06c91c8cd191f4771baa95764"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.64/plumber-linux-arm64"
      sha256 "06821f1ae04a7028ae434f3ce2b64f6648904635f8b184fccbe22f476b8ce366"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.64/plumber-linux-amd64"
      sha256 "518e2f2d99a5652897fa3e6d5e34a7451a9c0520615fcd8be5bd208a70d77f5c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.64", shell_output("#{bin}/plumber --version")
  end
end
