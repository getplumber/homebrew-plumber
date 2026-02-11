# typed: false
# frozen_string_literal: true

class PlumberAT0137 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.37"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.37/plumber-darwin-arm64"
      sha256 "a0cac720247f44b614688563edd69164957ee5d291bfcb68c50c440a34e5828b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.37/plumber-darwin-amd64"
      sha256 "0c9615d312e4beae9b5aa39252bdaada074fa815ba6b0bdaa52248e0e152002b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.37/plumber-linux-arm64"
      sha256 "14fe49e40e7e8381f4b8c97c72080bfbd04413cc9cf25d7b5f6064867d2c4c40"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.37/plumber-linux-amd64"
      sha256 "60f2702170e54f7ee675bf00e21069b47aed4405c4b8e0f8ba0031d57bc2663c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.37", shell_output("#{bin}/plumber --version")
  end
end
