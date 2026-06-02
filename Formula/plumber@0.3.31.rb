# typed: false
# frozen_string_literal: true

class PlumberAT0331 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.31"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.31/plumber-darwin-arm64"
      sha256 "62756c216e6aa870832fef767b24890f0079d43336deb8c49d80581a79aa3029"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.31/plumber-darwin-amd64"
      sha256 "44520474d691e3b60ef1856b55dcd23b7fa4f2c40bfa6f062431d12a474e53e7"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.31/plumber-linux-arm64"
      sha256 "ec35d7d47aaadb02212e87477abff2081b68037c56edb61d2daecb8ded854627"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.31/plumber-linux-amd64"
      sha256 "ba69e3d0b37ff0f7b62fd26e24e72cad80b11b698693d628f8decc96c1b02855"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.31", shell_output("#{bin}/plumber --version")
  end
end
