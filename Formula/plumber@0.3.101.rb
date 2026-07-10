# typed: false
# frozen_string_literal: true

class PlumberAT03101 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.101"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.101/plumber-darwin-arm64"
      sha256 "a499cb5d0b9d8a48ca8d758067ca3671f2507d867c4d8b083f353e87bfb9dff0"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.101/plumber-darwin-amd64"
      sha256 "7791083f9dff664449ae927d1fdbda753b0c36e6f39a95322d3b63c820d74018"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.101/plumber-linux-arm64"
      sha256 "c56a0e60bc4164f203fb5aeda326109acd0c11bdd18c4f0db544261145816bec"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.101/plumber-linux-amd64"
      sha256 "d9f73345ada5b73bc57d5ef213ea058d141065ef8e44fa4b7a30326a8a845238"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.101", shell_output("#{bin}/plumber --version")
  end
end
