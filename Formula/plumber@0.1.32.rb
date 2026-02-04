# typed: false
# frozen_string_literal: true

class PlumberAT0132 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.32"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.32/plumber-darwin-arm64"
      sha256 "66c9d47f0f99b99694b65952606eb096937fb6acef35feb5ad43532f835695ea"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.32/plumber-darwin-amd64"
      sha256 "4bda1b677272da28facab00e310cbce818c47b0b2c4c89cb84dc121d2a9699d3"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.32/plumber-linux-arm64"
      sha256 "a6065ee0397d8ffe8a256846658acdbe440cc481861ff2b381d024f7f8009207"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.32/plumber-linux-amd64"
      sha256 "8924446e221974a6cac8403b0c5f974a583090b7e269b7729acb5dec67d629d5"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.32", shell_output("#{bin}/plumber --version")
  end
end
