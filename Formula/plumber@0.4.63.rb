# typed: false
# frozen_string_literal: true

class PlumberAT0463 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.63"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.63/plumber-darwin-arm64"
      sha256 "5769278d9b69091bc02cae3cfe8c2c7a8587a067fe2b29a5840a84b6ee2cd691"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.63/plumber-darwin-amd64"
      sha256 "41c0e654e7dd155d01c752f1880bcd8275bee2084e2c4379ef147fea91239ddc"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.63/plumber-linux-arm64"
      sha256 "19cdfdf23cbf93c026dcd1f49b850567de915c747a496bd609b5ff3ccaf16415"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.63/plumber-linux-amd64"
      sha256 "c9a3a627991ed611730d997ca9af46ea45c79c63fe444151d1e0a856f942c317"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.63", shell_output("#{bin}/plumber --version")
  end
end
