# typed: false
# frozen_string_literal: true

class PlumberAT028 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.8"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.8/plumber-darwin-arm64"
      sha256 "5ea83e8fbb352a249ab7f55ca508f6f2c982aee3c503e7f5b8e7c19046dd8f87"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.8/plumber-darwin-amd64"
      sha256 "96a4527af50ee5e68279a3801766bcb84f408ecb4d0468affaa22635f72bc18c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.8/plumber-linux-arm64"
      sha256 "dc0dcb41b5f67692ced636acec7e760f6a6fdc728388837d2e4913673a598556"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.8/plumber-linux-amd64"
      sha256 "978dcd2ab39086c1f5ac1410cfc59868889a14333e3608575be2480d6abde3fb"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.8", shell_output("#{bin}/plumber --version")
  end
end
