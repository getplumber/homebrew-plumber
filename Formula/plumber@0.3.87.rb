# typed: false
# frozen_string_literal: true

class PlumberAT0387 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.87"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.87/plumber-darwin-arm64"
      sha256 "ae95df5e0ca1a56949453dab77e66959de7f7350a4aeb7a0e80fa0555dcb775c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.87/plumber-darwin-amd64"
      sha256 "8336679f23c410a78fa5efa3afc5694a05fe7413e89e80a9fa03f968ac61443c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.87/plumber-linux-arm64"
      sha256 "a0e4e4c2ed558376ee86c974a450d721ae5921adb35e5583d8b04c84f66cb91e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.87/plumber-linux-amd64"
      sha256 "e842b91235389a6c4421ee5f41e81f9c928158cc9bf660c8fdf1212dac45ac5f"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.87", shell_output("#{bin}/plumber --version")
  end
end
