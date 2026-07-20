# typed: false
# frozen_string_literal: true

class PlumberAT0411 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.11"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.11/plumber-darwin-arm64"
      sha256 "4e5f005a3368b98116c32fcfa5d563a654601fce1dc8128dc91e12a2cf7b6e50"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.11/plumber-darwin-amd64"
      sha256 "51ec0812e3fc4e24e753648a9baac0b5a5db5a7be06f63d5fb1a2f1b3789d433"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.11/plumber-linux-arm64"
      sha256 "6a46a26adea944b5cd7a24b7e721aa71f8aeb30ee16bd6e2f0acccd70ca23c77"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.11/plumber-linux-amd64"
      sha256 "3aca5f88d4ac41b622894417732294e2a06ffde9e597ff7122afdf65efa8eafe"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.11", shell_output("#{bin}/plumber --version")
  end
end
