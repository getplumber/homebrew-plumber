# typed: false
# frozen_string_literal: true

class PlumberAT031 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.1"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.1/plumber-darwin-arm64"
      sha256 "fb7bd219252e99b39a806102f43070b18b14d956c7e80e82869d720fdc36110f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.1/plumber-darwin-amd64"
      sha256 "fcf364c4f7ace9872fa0c9cd991018738b9b6cc08e646463f102720a6058c8d5"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.1/plumber-linux-arm64"
      sha256 "5bb61596c9c4d32c35cff72b2eef0353dc351d12bbbf1d44246bebd2c2eb245f"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.1/plumber-linux-amd64"
      sha256 "960cdf48c100325a042aa552b8e71bf3d8a72117d0fbe65fc91b4c84356e4981"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.1", shell_output("#{bin}/plumber --version")
  end
end
