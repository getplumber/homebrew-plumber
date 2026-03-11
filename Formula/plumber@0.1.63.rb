# typed: false
# frozen_string_literal: true

class PlumberAT0163 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.63"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.63/plumber-darwin-arm64"
      sha256 "c91f009e36843c01467ad6a62a73d2d4a15d3f8b84ee0d5a3e65c45bfaa22f47"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.63/plumber-darwin-amd64"
      sha256 "ef50ab7ea0b0898560d153bdab92d9894f981ef5d44d55511f11bd91f9f86a30"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.63/plumber-linux-arm64"
      sha256 "7f4c39530e05c8fb322e2416f9c11cd8c3ea46c3d513ea2c3bf6bda075a6b6fb"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.63/plumber-linux-amd64"
      sha256 "5e9ccfc37c166c2ec354f529bb3ec0b6a7c149e635e8ab82e971d46a58e96e2b"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.63", shell_output("#{bin}/plumber --version")
  end
end
