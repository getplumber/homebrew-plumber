# typed: false
# frozen_string_literal: true

class PlumberAT0359 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.59"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.59/plumber-darwin-arm64"
      sha256 "decdbea81f741a0c9fe0ff1e7df42faa207569bd6bcf4b61e0f772e3e1adf33f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.59/plumber-darwin-amd64"
      sha256 "d4c03d50dfa8594d0211157b11e8a0565ae42d30b53e1fa2b9a845f57ad07dd8"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.59/plumber-linux-arm64"
      sha256 "8cb84b6270a9002b60f5c539209d13496db05435fc70406a5e954e456eafc92a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.59/plumber-linux-amd64"
      sha256 "24db73eecd910ff819bbc635fc8aafdc5fa195f493841f0f1fd68bfb3204cab3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.59", shell_output("#{bin}/plumber --version")
  end
end
