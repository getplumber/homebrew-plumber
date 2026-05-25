# typed: false
# frozen_string_literal: true

class PlumberAT0318 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.18"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.18/plumber-darwin-arm64"
      sha256 "64d4f857101e341a6297c2379a19507891256bf2c10bea8bd9bcf4363e4ffdbe"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.18/plumber-darwin-amd64"
      sha256 "6c1bb11622a042e3486135d43a8c1aa7cb13edc3fb9dc20d48aee0144d6fd967"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.18/plumber-linux-arm64"
      sha256 "f3de1d3eb70eaf15efc99091e7030ab563550948635faff9ad2b016c4727f4a6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.18/plumber-linux-amd64"
      sha256 "bcaa5acc81ab3cebed718731f7956c4dc66a29c79af1cad7c224456616abe92b"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.18", shell_output("#{bin}/plumber --version")
  end
end
