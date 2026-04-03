# typed: false
# frozen_string_literal: true

class PlumberAT0180 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.80"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.80/plumber-darwin-arm64"
      sha256 "2ecadeccacf45b2de870dc6ff20f546a5a9c26e3afe55654afec4341b7c376bb"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.80/plumber-darwin-amd64"
      sha256 "3c9fc91eff1f349a50ac3135f0b1d9ff38158880be8cd882d4d0c1fd580a89bb"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.80/plumber-linux-arm64"
      sha256 "b4e67cfac0e3f6c4a63c6077ab5d4061d09cbbe7786b04b5db8a6af105ce499b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.80/plumber-linux-amd64"
      sha256 "abfa1c68a97c7eff4c71762ba5ec0cc83324e92b906f5339b8ecd2855267871b"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.80", shell_output("#{bin}/plumber --version")
  end
end
