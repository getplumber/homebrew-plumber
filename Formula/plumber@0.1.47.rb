# typed: false
# frozen_string_literal: true

class PlumberAT0147 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.47"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.47/plumber-darwin-arm64"
      sha256 "62edf09436f6dd312080bb5f4c66a1beb71c3b20335819d6eb9272cd8fd6b989"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.47/plumber-darwin-amd64"
      sha256 "79373006faa03acfd4833d854cbf2e443d04325aa3049c738a912c658365375c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.47/plumber-linux-arm64"
      sha256 "9f4d8e09c30dcdf4d4c6f21226660625d06a9ff2bcd5d24cce66b625b37516eb"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.47/plumber-linux-amd64"
      sha256 "c70bc40d67687eb482172f1e8dc6bb9af6b81834c85cb2a356a0df324b47edfd"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.47", shell_output("#{bin}/plumber --version")
  end
end
