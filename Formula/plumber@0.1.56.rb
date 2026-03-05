# typed: false
# frozen_string_literal: true

class PlumberAT0156 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.56"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.56/plumber-darwin-arm64"
      sha256 "c374a7956d4679b4b0c4b75cf9a166c4725e37a785070c87690ffb88cdabad91"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.56/plumber-darwin-amd64"
      sha256 "b9579b2bf0a3400dd21474a86f028b4e2efec1b8b609b0e989840926b592742d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.56/plumber-linux-arm64"
      sha256 "006d2415d82309cafd81aabd4c8c1960590a05f6425d3dbf0c6d814dc9c26b70"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.56/plumber-linux-amd64"
      sha256 "d66cb9ea0ea8bc114f12c392dec58713eac19f80de4bf83783fa5811f48e467f"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.56", shell_output("#{bin}/plumber --version")
  end
end
