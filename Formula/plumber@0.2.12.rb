# typed: false
# frozen_string_literal: true

class PlumberAT0212 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.12"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.12/plumber-darwin-arm64"
      sha256 "b666eec67e9c1289d568c61f1d3d7dfeb082ed818afb2ce763742b211203b113"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.12/plumber-darwin-amd64"
      sha256 "1a9810671d1baa775657e88e2370ecae7a18d25c8e4d4f9cda3f48468124c764"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.12/plumber-linux-arm64"
      sha256 "f449bcf4d10e53defa3de0e4689c22619049d3c407071cf1d305cec7da08d4b1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.12/plumber-linux-amd64"
      sha256 "673736a15838be0a5d3ea0c0ef1488fea2952c20b93827fabfd1b026ea468dae"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.12", shell_output("#{bin}/plumber --version")
  end
end
