# typed: false
# frozen_string_literal: true

class PlumberAT0310 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.10"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.10/plumber-darwin-arm64"
      sha256 "80f4e628727421fa6c28be302bb4b8f5e57de90b4542f1b8157af7193d93be7b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.10/plumber-darwin-amd64"
      sha256 "d44eaa0309334b6e22b54b15203b61bb87d3c244638821b8ee37e734cf1790c2"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.10/plumber-linux-arm64"
      sha256 "a8ab41f7e6b7abe15444bc38dcd1750549ae0bca65c05ee3be209bd479305ea7"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.10/plumber-linux-amd64"
      sha256 "788d90f30f85162e8c0a03dd00c52ccccc3390c465feecb9078ff57d66b6cc84"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.10", shell_output("#{bin}/plumber --version")
  end
end
