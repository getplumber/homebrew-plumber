# typed: false
# frozen_string_literal: true

class PlumberAT0136 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.36"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.36/plumber-darwin-arm64"
      sha256 "b019b63fc2a93c49f48931b2564dd841071332352ecef417e8e0aaf1c731f354"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.36/plumber-darwin-amd64"
      sha256 "95a9aa6c4640aa1cb229b4ebffd72abd9809b4b17f0003bd91381e38f46ee09f"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.36/plumber-linux-arm64"
      sha256 "5420ab0777aec4b26d6dc22c04bc2d5d4abbe3c385fa57473deb74c49d1351cf"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.36/plumber-linux-amd64"
      sha256 "86450292b884c64cb993104c40b22f273a0d7d1fea13afb97ab4ed4593735f54"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.36", shell_output("#{bin}/plumber --version")
  end
end
