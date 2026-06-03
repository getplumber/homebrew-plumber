# typed: false
# frozen_string_literal: true

class PlumberAT0343 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.43"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.43/plumber-darwin-arm64"
      sha256 "db461ddbe99178b498d2d74021b38f6c67992b4c5b8059dec4c38f0addc0e20e"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.43/plumber-darwin-amd64"
      sha256 "ab140c8cea7706b97b665f3e00cda3ab59e1347afd04658092585e1d29d826a4"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.43/plumber-linux-arm64"
      sha256 "9ca710628a1160b3e08e0ec593d7fd51f6361452a91cb55ce02787303ba06d7e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.43/plumber-linux-amd64"
      sha256 "1f711cc247de1f40df690091cb2b87e0be084fd4cb6e932d5d099f5c780d9b59"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.43", shell_output("#{bin}/plumber --version")
  end
end
