# typed: false
# frozen_string_literal: true

class PlumberAT0210 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.10"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.10/plumber-darwin-arm64"
      sha256 "d8fd60255a33de18e69d5da961e50b2db3dae54e851f5f5d5598021081341800"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.10/plumber-darwin-amd64"
      sha256 "b2350237b4f7ee74dbc2f5ae3b060c7473d2f259add2dc921d8a683aa87a4ea7"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.10/plumber-linux-arm64"
      sha256 "e634738de524bd124231889e9e2d8140242fde508b69a6de2743d8678b06318a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.10/plumber-linux-amd64"
      sha256 "518ca7a01ed9c43ea4a9958709592c61ac27b35ba210a9bacc8968080f200ec6"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.10", shell_output("#{bin}/plumber --version")
  end
end
