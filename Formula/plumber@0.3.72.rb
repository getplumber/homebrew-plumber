# typed: false
# frozen_string_literal: true

class PlumberAT0372 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.72"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.72/plumber-darwin-arm64"
      sha256 "01340468d819023e7a5b55163ea5b8b5deb6c77936cd9ea8582e15cd3f3cb233"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.72/plumber-darwin-amd64"
      sha256 "1a5a3f8b0e2227304da18c9641982f4bdfcdbd94cdde1d74027a3c2421c56761"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.72/plumber-linux-arm64"
      sha256 "d1bad7fccdc9b13089225db0a8ff5eba6d8a02195d4e87617f173b953a401659"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.72/plumber-linux-amd64"
      sha256 "dbcc9b58da39af65e7e6dfb1d28223a2dc539030e54533535e77dceb06ec10cb"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.72", shell_output("#{bin}/plumber --version")
  end
end
