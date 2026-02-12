# typed: false
# frozen_string_literal: true

class PlumberAT0138 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.38"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.38/plumber-darwin-arm64"
      sha256 "92bc5c5e1809e4e0115bc65d8d8dc80b4d4c8bc182b281f830a77292ef35d886"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.38/plumber-darwin-amd64"
      sha256 "bd594366f4d22fddd316a716cc12fc7505f291d1285eec7b394ef38698a1f65b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.38/plumber-linux-arm64"
      sha256 "9a6a446e1bff465bb8d38324dd1a63b247c1e1c705dac45f21969ee6eb0bf226"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.38/plumber-linux-amd64"
      sha256 "a71fe360ac32251097539f0b3aded20204095297727391e6d82bbd53b0782cf6"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.38", shell_output("#{bin}/plumber --version")
  end
end
