# typed: false
# frozen_string_literal: true

class PlumberAT0390 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.90"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.90/plumber-darwin-arm64"
      sha256 "718eea698b47e6c2260b3f591c5059823c435e6528e111b8bac85bdfe83e0197"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.90/plumber-darwin-amd64"
      sha256 "6b1bbd65558f78186c4bad9b6b7ba2c9ff914d1b316e00c0441c8bd8adf0ea70"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.90/plumber-linux-arm64"
      sha256 "7dea67acd786165631ad471628ac64ca8c846555d7653865d0cc0527b057c9d4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.90/plumber-linux-amd64"
      sha256 "2b7466d797a33b9d902053b831e5d59ced5e712be71f48bc298b9dee823640aa"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.90", shell_output("#{bin}/plumber --version")
  end
end
