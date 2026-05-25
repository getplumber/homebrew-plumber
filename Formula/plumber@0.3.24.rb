# typed: false
# frozen_string_literal: true

class PlumberAT0324 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.24"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.24/plumber-darwin-arm64"
      sha256 "152442b51578ec435dc7ecfcfb0f5cdf95da02528cbfca115d1512d328270546"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.24/plumber-darwin-amd64"
      sha256 "071c1ef2429b19f3cd28726051647c0cf13671b2414fe6bcccc41983e0326121"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.24/plumber-linux-arm64"
      sha256 "c8bf4b43bb3539708a09ac83d2dd7655d42bcb7676f9b37a97063cbae8a388ed"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.24/plumber-linux-amd64"
      sha256 "173ab12ef68a09854a230340ad786e5cbdf9b26a1bd15157ebe12db38b3d6bc8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.24", shell_output("#{bin}/plumber --version")
  end
end
