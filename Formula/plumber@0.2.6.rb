# typed: false
# frozen_string_literal: true

class PlumberAT026 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.6"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.6/plumber-darwin-arm64"
      sha256 "255b4cf50dd8ae47c5c0484374c7e18217fb03836c217e6555c28e18660045a8"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.6/plumber-darwin-amd64"
      sha256 "d8fa4248a00d42132e0686bf19769ff79128998815181ac820e7209e43c82e31"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.6/plumber-linux-arm64"
      sha256 "d81c3135951ff9950185c8d7a13b743ad6aee956a98e001418e58f1d3a6eb6f3"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.6/plumber-linux-amd64"
      sha256 "59fa9480fccb90844b39ed97057a97a4292c59da0f2ffda6956bd89a7591ff8e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.6", shell_output("#{bin}/plumber --version")
  end
end
