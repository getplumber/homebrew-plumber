# typed: false
# frozen_string_literal: true

class PlumberAT034 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.4"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.4/plumber-darwin-arm64"
      sha256 "46cddb0433d7d563d3dc665a16f5d7757d73947d933a8053903183402370f748"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.4/plumber-darwin-amd64"
      sha256 "a36aa18342bdde65b0016d142b16ab8565bd3d3529be4350b17ca425f0287809"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.4/plumber-linux-arm64"
      sha256 "2439c1edc9a1a5051601a11017db3498d8cd8372703472ab75e1cd11422189c1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.4/plumber-linux-amd64"
      sha256 "b1bdba706e9887ea268b9698c7b4527d71571becb2ca42895e5075a64be757d7"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.4", shell_output("#{bin}/plumber --version")
  end
end
