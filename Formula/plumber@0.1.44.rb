# typed: false
# frozen_string_literal: true

class PlumberAT0144 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.44"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.44/plumber-darwin-arm64"
      sha256 "12d548ba3b1947a9a500b47f41ab5cb8159617111df8ca6b4ef5fc89187384d1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.44/plumber-darwin-amd64"
      sha256 "b8a892a0a6d29f1ef0651e7b8388cfafe800d6019eaaf2388ec240ca94f42133"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.44/plumber-linux-arm64"
      sha256 "8f9457031561abeb8edf1136bdbe137004d6d4cb929cec6782483cb482f5af1b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.44/plumber-linux-amd64"
      sha256 "99f9de24c897408f3cd3187ad1a36d02e620d4055e63ea24540b1deea19f29af"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.44", shell_output("#{bin}/plumber --version")
  end
end
