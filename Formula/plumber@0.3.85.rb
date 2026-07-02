# typed: false
# frozen_string_literal: true

class PlumberAT0385 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.85"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.85/plumber-darwin-arm64"
      sha256 "2353cb6c0872213791adae9aa70204a64d06773d0296b669d1e2e82b95a0a113"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.85/plumber-darwin-amd64"
      sha256 "f90f3f18fb6524faeff8287b1bffd3f9a475b684de8f6e48a03d53cd9aea4461"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.85/plumber-linux-arm64"
      sha256 "444f32642e8337795c86276301e25ce74ac5d901378939092396f34412f86b0a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.85/plumber-linux-amd64"
      sha256 "084932f7ac1261a64e4f6cc49e98a41861b165eaf424d3e5ae55cb29116b8db1"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.85", shell_output("#{bin}/plumber --version")
  end
end
