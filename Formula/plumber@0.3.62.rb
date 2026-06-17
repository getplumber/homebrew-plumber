# typed: false
# frozen_string_literal: true

class PlumberAT0362 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.62"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.62/plumber-darwin-arm64"
      sha256 "e1fc8b224d3b18865ded0e579b29b3792b06c7b6d813ba7015e782d1263441a7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.62/plumber-darwin-amd64"
      sha256 "f822cc2e3d28eeee4550e748273696959e488de3b1f6a0ad145621f3803250a5"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.62/plumber-linux-arm64"
      sha256 "1251bb46516faab1191d095c6ca312e080a73b297e73547cb981c6e04723258a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.62/plumber-linux-amd64"
      sha256 "a91d3ac50a83e104b4f976d3e38fe70b8850d94b67a918722b102db5c81fd710"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.62", shell_output("#{bin}/plumber --version")
  end
end
