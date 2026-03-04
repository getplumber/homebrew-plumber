# typed: false
# frozen_string_literal: true

class PlumberAT0152 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.52"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.52/plumber-darwin-arm64"
      sha256 "9c9f46645ef78bd79116bccf684ec70b1e4b8cdd4ffc51c4601f3c8756dc1a46"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.52/plumber-darwin-amd64"
      sha256 "c792456cea4f45f3d6fed2218c224421182fe7fd5e3efc5e383d29d323ba56b4"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.52/plumber-linux-arm64"
      sha256 "c7c470766d2379bbd63b4d96d49a5f450ddd4fd3a664d331352ff7777d54841d"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.52/plumber-linux-amd64"
      sha256 "0c7ad248cd26eabc922bcd3cf6e4f5fe34bd16de6efd2ba8ce248df304b175e7"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.52", shell_output("#{bin}/plumber --version")
  end
end
