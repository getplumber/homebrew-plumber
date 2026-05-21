# typed: false
# frozen_string_literal: true

class PlumberAT033 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.3/plumber-darwin-arm64"
      sha256 "cf74071db0cecc78da1855e5fe524ef985e744c4630729ab6c4c0ab6ff6e2a26"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.3/plumber-darwin-amd64"
      sha256 "c27462a065f31ff4704e9bb67430d5552d6b87af97c83ff3bd7919eb673485eb"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.3/plumber-linux-arm64"
      sha256 "42a0abc9d9ba9fa4c0e46be920827edd0cb03290a36b41acf693e23225262215"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.3/plumber-linux-amd64"
      sha256 "47a08c035dedce51822210d2abca2bd1c13e01ec9aab39602fd6d23c2a06f0f8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.3", shell_output("#{bin}/plumber --version")
  end
end
