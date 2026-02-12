# typed: false
# frozen_string_literal: true

class PlumberAT0140 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.40"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.40/plumber-darwin-arm64"
      sha256 "6eafca2741fa1c1be135ad9885a43b06a8811f106ac4f03da9dda5edca782632"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.40/plumber-darwin-amd64"
      sha256 "93d661432cdfd9d10a3e6d3c386c56209bb30a4d05e3ee0b7993f182bb1a3e68"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.40/plumber-linux-arm64"
      sha256 "15c3066d397f4e63bf3f261df79d4ae4a9cc5bae1e6d26b1457022179ea245de"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.40/plumber-linux-amd64"
      sha256 "0f82d2fc8c2c09731eaa013d4eff2909097a9ae4be9f55e8846d49fa4f4394af"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.40", shell_output("#{bin}/plumber --version")
  end
end
