# typed: false
# frozen_string_literal: true

class PlumberAT0336 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.36"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.36/plumber-darwin-arm64"
      sha256 "8bb5aa10bae07360dad39c8192bc74ded8b22b568af459d7603504d9528c212d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.36/plumber-darwin-amd64"
      sha256 "22bdac37b08256078006dcb47c1338232e49b408c54c65aeeb53aee1e55f7a9f"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.36/plumber-linux-arm64"
      sha256 "4523129e4df8bbe4ba092c00ada8a4e44ba7e82c61058662a5a782795aeb6775"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.36/plumber-linux-amd64"
      sha256 "6845ecd75e03901ddc3fcfda1feb147b7b11bf843c58b37e83571406d477615c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.36", shell_output("#{bin}/plumber --version")
  end
end
