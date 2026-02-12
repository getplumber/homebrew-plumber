# typed: false
# frozen_string_literal: true

class PlumberAT0141 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.41"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.41/plumber-darwin-arm64"
      sha256 "f2bf567ab0b0c594d1b52e85f9e5ef466c53c536ac52fc1109183c1099a87b34"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.41/plumber-darwin-amd64"
      sha256 "83545b299992ceb854aa14f4a8f4a45039a848f19f6e77d368365e0a98466f53"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.41/plumber-linux-arm64"
      sha256 "61ad77888f51ab60d9835642623dd99ad27f485df8a24954bd4f14e2b41a4ba4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.41/plumber-linux-amd64"
      sha256 "f90b9e8c7c226c9ee64ae0a9c847f3161770b608c02342d32ea3d579d93776d3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.41", shell_output("#{bin}/plumber --version")
  end
end
