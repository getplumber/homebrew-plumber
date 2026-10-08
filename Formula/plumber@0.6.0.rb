# typed: false
# frozen_string_literal: true

class PlumberAT060 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.6.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.0/plumber-darwin-arm64"
      sha256 "cc8caa52b95892eb3bf7346692684b23bfa9e8013af93df666903dd8c875dbbc"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.0/plumber-darwin-amd64"
      sha256 "bb1e6bf0ac368366a2620e4acc7797d747e8eb0a8cff70522ab1b7c9a48cdf9e"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.0/plumber-linux-arm64"
      sha256 "e3b90660acea260b1e01105d6a0ab671c6d3e15df163b93233c04c1573d7a0e4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.6.0/plumber-linux-amd64"
      sha256 "342c7f35ce7f9b7884572da6630c36208ad306c187931629b6035c37f4527b39"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.6.0", shell_output("#{bin}/plumber --version")
  end
end
