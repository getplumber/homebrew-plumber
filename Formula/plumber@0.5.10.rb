# typed: false
# frozen_string_literal: true

class PlumberAT0510 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.10"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.10/plumber-darwin-arm64"
      sha256 "a334d43eec4a4601f779cd20478767cc5ff14f75dbddc69338e0eddabd44b8e1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.10/plumber-darwin-amd64"
      sha256 "3e812eb633946674fe6098fa3f6cc6563ed31b6bd7e61d1cabfff65d38447209"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.10/plumber-linux-arm64"
      sha256 "a17c697dead7ef2640c3e91382ae72cf6eff3b3cd72d3fb3813e7d79a254edca"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.10/plumber-linux-amd64"
      sha256 "0ce556e4cd1f84ec9bceee3bf742837d1cce1b10532c4f92dc8bc29b21d2d175"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.10", shell_output("#{bin}/plumber --version")
  end
end
