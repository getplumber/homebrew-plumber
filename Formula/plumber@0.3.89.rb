# typed: false
# frozen_string_literal: true

class PlumberAT0389 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.89"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.89/plumber-darwin-arm64"
      sha256 "7dc4148eadfa2e56cc170858a071fc5a8910fb288e0861a7981f1f8c410e3f85"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.89/plumber-darwin-amd64"
      sha256 "9d845e431bfde81511a5d8b1c31a277cfaa7d72935a346650cd76f7071005966"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.89/plumber-linux-arm64"
      sha256 "ed4f8d4b36114d28256862bdbb122b62517f3d766cd90685e08a617ec7411ee1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.89/plumber-linux-amd64"
      sha256 "ec1a2a1c9b4cb9b5822783ea13a28fe9607ef73747aca90606c6a33aa94d6072"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.89", shell_output("#{bin}/plumber --version")
  end
end
