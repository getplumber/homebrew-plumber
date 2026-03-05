# typed: false
# frozen_string_literal: true

class PlumberAT0155 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.55"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.55/plumber-darwin-arm64"
      sha256 "0970e9556a0502942dd9a1bc9d2d83efabce4e15917438303a9ee1705a3727da"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.55/plumber-darwin-amd64"
      sha256 "63706bbed6871546ff8052829d13b561db5f150c6c327c0c755ace62b7f8cf98"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.55/plumber-linux-arm64"
      sha256 "fa1604cc776b7f2f88ec8b8b7dfd5de1c715a589d76e8bb39916e48bd7242695"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.55/plumber-linux-amd64"
      sha256 "a651907e3ff9e0f4875cab438ff2a1ba995305fb8ad140d6f1178f4efc495e90"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.55", shell_output("#{bin}/plumber --version")
  end
end
