# typed: false
# frozen_string_literal: true

class PlumberAT0311 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.11"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.11/plumber-darwin-arm64"
      sha256 "d1034c56bf5c59abb8cdf515598e7a3e2ee2be42121cb580b7b20926c8d61363"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.11/plumber-darwin-amd64"
      sha256 "51cce00c9a40d75f9d87c2a84c8ee8547ce6f3cd71fe397bdae4266c78fe44a2"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.11/plumber-linux-arm64"
      sha256 "ddedd0e05751c169b7109fbf528a90103dad5dffad836397a031f5aa135f01a4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.11/plumber-linux-amd64"
      sha256 "2d5dabd479ecd9db09e72ee223ac1239529293003032fa6f88cc935b4069662d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.11", shell_output("#{bin}/plumber --version")
  end
end
