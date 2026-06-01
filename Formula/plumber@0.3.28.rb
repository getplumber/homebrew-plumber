# typed: false
# frozen_string_literal: true

class PlumberAT0328 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.28"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.28/plumber-darwin-arm64"
      sha256 "f8f57c15c60b0f358cb31b64dc3091c054e88594ae628c87e19db3ce686c3473"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.28/plumber-darwin-amd64"
      sha256 "c6540a8fac6194530ab9467e1b3125d61d3e7ba1b8c48e23921117de8014cb62"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.28/plumber-linux-arm64"
      sha256 "752cdaba8196194ae7f21b9eae5c5d19b5d26b92513e75ee50b8f86a6f46bb90"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.28/plumber-linux-amd64"
      sha256 "49c0e011d8f8b5aa12c462b5f005db5ba37d4370b9d83ad488da64eacdc0ce85"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.28", shell_output("#{bin}/plumber --version")
  end
end
