# typed: false
# frozen_string_literal: true

class PlumberAT0313 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.13"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.13/plumber-darwin-arm64"
      sha256 "24c38dca49201f3d6408aee04ec669677a6a55671636345675a323571617c1f8"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.13/plumber-darwin-amd64"
      sha256 "5f485746b192f82315054ec83a39cdcb216dc23367af0fc478e7b747f482a62c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.13/plumber-linux-arm64"
      sha256 "d610abedcf083cde679a07061298078f4a00f0b94c73acf5baece96e7eaf4691"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.13/plumber-linux-amd64"
      sha256 "ed6caa06b457e6a407940648b1f13a86904edd46528b8180dd652279ff00f526"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.13", shell_output("#{bin}/plumber --version")
  end
end
