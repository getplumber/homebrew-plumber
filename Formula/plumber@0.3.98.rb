# typed: false
# frozen_string_literal: true

class PlumberAT0398 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.98"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.98/plumber-darwin-arm64"
      sha256 "1b649d182375d29bd3e2eb69622b05626aa61a41e3ef48c64e841930670c4367"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.98/plumber-darwin-amd64"
      sha256 "8abe83b8b0520b5e73f013f5096464d9aa9d767d71a51eb478230734385b310f"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.98/plumber-linux-arm64"
      sha256 "05ae94030a6a9d2eabe2d5ddfab1462d7d2382b794a03f3315e76bb6ae9a2145"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.98/plumber-linux-amd64"
      sha256 "eaf7d847efe95ee3441fc9e9b30d7846b43776520405f570f660b7635218ad9a"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.98", shell_output("#{bin}/plumber --version")
  end
end
