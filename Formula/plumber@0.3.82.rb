# typed: false
# frozen_string_literal: true

class PlumberAT0382 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.82"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.82/plumber-darwin-arm64"
      sha256 "24b50e47f76bab513546a6de2ab71bf5018dd4141bcb4dbc2a29e0b485dcdd5d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.82/plumber-darwin-amd64"
      sha256 "0a4858fb5d01639543677505d4c298cf7afbe66c1177a3f524ddd0b75eb76e9c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.82/plumber-linux-arm64"
      sha256 "f4d7d2e2b8d1a1e2e20e44b44a5a163b67c728e0a5bc5770e241a13c56c101da"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.82/plumber-linux-amd64"
      sha256 "869f427fedbc473188a6e18e0667445af71cd34df5fa1e0e0085eb048dade5c5"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.82", shell_output("#{bin}/plumber --version")
  end
end
