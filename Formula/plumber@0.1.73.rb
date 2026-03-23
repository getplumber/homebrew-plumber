# typed: false
# frozen_string_literal: true

class PlumberAT0173 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.73"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.73/plumber-darwin-arm64"
      sha256 "64c50f4d686cd8d4192aaeb413802be0a63ec34f14c79e1b6fa681a1816480c3"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.73/plumber-darwin-amd64"
      sha256 "872fb8c479b5348420662a961b04b55205883fd69c4ab954ff9a915bcd6d2bb7"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.73/plumber-linux-arm64"
      sha256 "39d3b2aee9f855d6ccdc2e5a7372f45c167ce596975e7be88a8502dfd5e117ae"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.73/plumber-linux-amd64"
      sha256 "3fb60c48d5985367575de6415f9d64da82beb95fb54782e47ddbabbdca0c67ff"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.73", shell_output("#{bin}/plumber --version")
  end
end
