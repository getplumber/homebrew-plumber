# typed: false
# frozen_string_literal: true

class PlumberAT0221 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.21"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.21/plumber-darwin-arm64"
      sha256 "e7d492137397261e9d9ac9d2e3f9dc9f8607fa8bf4b03193b7fd6cefc9e70273"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.21/plumber-darwin-amd64"
      sha256 "7b537cc871c43c69e2c1a465fb8c549043503a281a90044444de1179bf2abd87"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.21/plumber-linux-arm64"
      sha256 "b51b23157cae0477aa61f58dd0cb2dd6fea7afde8c086a4b9059c68dffd0ef71"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.21/plumber-linux-amd64"
      sha256 "8edaf3286f9f307daa562ca7d76e3c9e52092b2af96b5783e116707bdb3fb19c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.21", shell_output("#{bin}/plumber --version")
  end
end
