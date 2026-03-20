# typed: false
# frozen_string_literal: true

class PlumberAT0170 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.70"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.70/plumber-darwin-arm64"
      sha256 "e9fae480054cec5bdde316004ef7d286fc0cbf58593465806f803d3da0272c7c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.70/plumber-darwin-amd64"
      sha256 "d286815c86362800eaf1acdba802e631cd201660a6abfff29f8c4986a39ca704"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.70/plumber-linux-arm64"
      sha256 "01db9cf05dc1608fa2e41cb412c8f43494a858b240bda7b24e60095db90cb87b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.70/plumber-linux-amd64"
      sha256 "6d1bc574654124165ee5ef19bc22840df7bb059579e4e1d65ede2684fff5d8a6"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.70", shell_output("#{bin}/plumber --version")
  end
end
