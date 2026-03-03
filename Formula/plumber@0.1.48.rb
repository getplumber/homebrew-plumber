# typed: false
# frozen_string_literal: true

class PlumberAT0148 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.48"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.48/plumber-darwin-arm64"
      sha256 "a4270cb7082a78fd53c2608da726ecda460a5dcbfed3e5c0b877efd81d73b08d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.48/plumber-darwin-amd64"
      sha256 "74ea005dca1e924a56fec6587b6a3947d81f92cd20516fd03cdd525b49a624e7"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.48/plumber-linux-arm64"
      sha256 "eff04d8d1a28073666109608933b20132cb547bebe8cd2ebd33689a0774fca69"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.48/plumber-linux-amd64"
      sha256 "b0cd7146b6de634ff07b6f96a80113281833f7ac1d5fb49a2e6f4c4eb3851b3f"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.48", shell_output("#{bin}/plumber --version")
  end
end
