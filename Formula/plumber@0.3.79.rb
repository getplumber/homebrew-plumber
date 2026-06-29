# typed: false
# frozen_string_literal: true

class PlumberAT0379 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.79"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.79/plumber-darwin-arm64"
      sha256 "8a02581fd7e68fa672ab94cadcc60c8861784463e41e0cc064108514f9187f68"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.79/plumber-darwin-amd64"
      sha256 "a765035582ffe97c11c34fcb7d375e55bb807f96d37d9cb4cb9808cc210179fd"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.79/plumber-linux-arm64"
      sha256 "d44116c038340374b696b4180b2486ae7e0474ad7ec4477f0f5db65a018101ac"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.79/plumber-linux-amd64"
      sha256 "a89577dca1677383350f010c593b7cedf1b4b0d84914269ea90d1d2fa098b738"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.79", shell_output("#{bin}/plumber --version")
  end
end
