# typed: false
# frozen_string_literal: true

class PlumberAT0123 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.23"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.23/plumber-darwin-arm64"
      sha256 "e3dd955c4182239ac92d32f6ca1787bb4af23925c037be8b914b83f9ad0270f3"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.23/plumber-darwin-amd64"
      sha256 "f6235b9651e713610609ef76d1771b1f81f77e732d968608bec84c2b59689dcf"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.23/plumber-linux-arm64"
      sha256 "c3744e9b5c256cae23009e9570d65054105658abdcec535fbff63b000e1fd595"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.23/plumber-linux-amd64"
      sha256 "233ea23ea8e0206cd59a8849da2ee48807fb7f868abddffc81ec984dd8dfe442"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.23", shell_output("#{bin}/plumber --version")
  end
end
