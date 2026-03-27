# typed: false
# frozen_string_literal: true

class PlumberAT0174 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.74"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.74/plumber-darwin-arm64"
      sha256 "e0dae6b108e29ac8361843ab782c085db1b3beed28e96f1528ca30c7fe3feb16"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.74/plumber-darwin-amd64"
      sha256 "054c161cfde96c09dc0ca69bd0bef9943e532cf5c3a9bda90ff5ef78a0b910e6"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.74/plumber-linux-arm64"
      sha256 "533c604b93e3ea3aef98b50faf23111ec6d456f2a4300c22d460545ba5a56353"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.74/plumber-linux-amd64"
      sha256 "93018d1d214076c5e1e8f6525feb7c3845e5f24b777052ba6b4405ae9d6687df"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.74", shell_output("#{bin}/plumber --version")
  end
end
