# typed: false
# frozen_string_literal: true

class PlumberAT057 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.7"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.7/plumber-darwin-arm64"
      sha256 "ebdb315ea52a97c2fe48b81f2ab617bf32fc26176db934da69b33670629c3c90"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.7/plumber-darwin-amd64"
      sha256 "cbc16b982174ce29a70f9d59191efedec63f514f01a1ea2eafa5d14c37e66333"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.7/plumber-linux-arm64"
      sha256 "56e1c18507516d43dd0ff57246dd9c85feb29993ec9474937ff92db5b4fc274e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.7/plumber-linux-amd64"
      sha256 "659998fe53f899e293545faf2a7ba5b980c0d1b18a82356fc7f6793a545716d1"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.7", shell_output("#{bin}/plumber --version")
  end
end
