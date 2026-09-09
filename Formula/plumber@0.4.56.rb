# typed: false
# frozen_string_literal: true

class PlumberAT0456 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.56"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.56/plumber-darwin-arm64"
      sha256 "b903b6699711d5e0a2ea3b7d39f3a40966747efe215160352f3158ef7946501b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.56/plumber-darwin-amd64"
      sha256 "9b5310b1d845ec08ba8c8190251d58cc5b1216be158bae81cb2a22d4df737999"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.56/plumber-linux-arm64"
      sha256 "5af74a891238484c1719ceb67b259fa6574137b614cf3c9e3af57cda5821b0d8"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.56/plumber-linux-amd64"
      sha256 "00e4507b4118cdf215adead1355934f968f9ea00eb5b407d744ab9e7bd06e5fc"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.56", shell_output("#{bin}/plumber --version")
  end
end
