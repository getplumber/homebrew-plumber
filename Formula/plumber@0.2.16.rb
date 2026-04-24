# typed: false
# frozen_string_literal: true

class PlumberAT0216 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.16"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.16/plumber-darwin-arm64"
      sha256 "007a321929879ff50a8028a50ad4c07847fdfe48e77f0b9c2227d7fb8f131c6e"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.16/plumber-darwin-amd64"
      sha256 "c880573264f839da9646c3a0f11dd4dea980aad9c76d65b8adc9ce2ecd575af3"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.16/plumber-linux-arm64"
      sha256 "5fa4eb0313a01cab05ed6b81a326ea733950041a33359ec7a7324a2e1a55f9bf"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.16/plumber-linux-amd64"
      sha256 "a56e27d2d2ea43f3521f191d9c600ee014f1120f6f9b9ac82cdbe7ede7c44114"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.16", shell_output("#{bin}/plumber --version")
  end
end
