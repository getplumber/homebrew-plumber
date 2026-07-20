# typed: false
# frozen_string_literal: true

class PlumberAT049 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.9"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.9/plumber-darwin-arm64"
      sha256 "358322d106dc61cad549490de416a2c77483a5ce174febb256f21e2c3b0ad59c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.9/plumber-darwin-amd64"
      sha256 "6dbf8d6377552cfb48faca4d5586d3d480dd91defc2515146bb6ca7a311d2a53"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.9/plumber-linux-arm64"
      sha256 "49ae168d4dfa48e12fa07823159d23794b2cd428698c80e8fc4c5a3bb5576127"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.9/plumber-linux-amd64"
      sha256 "d894666c99cf1f7aed73e655413371934ac0dd1b9334df391ca799e428711352"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.9", shell_output("#{bin}/plumber --version")
  end
end
