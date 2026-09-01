# typed: false
# frozen_string_literal: true

class PlumberAT0451 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.51"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.51/plumber-darwin-arm64"
      sha256 "430db0feb2c4b881d757a3249ecf87183404e26468b31982ff48a0ecf25e765e"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.51/plumber-darwin-amd64"
      sha256 "f12fce2fb2b8c5e49bdf0497deaf0df640562758545bfa55cc3b2111fb34b0d7"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.51/plumber-linux-arm64"
      sha256 "59c285985bd1582e49bc785f5f3e9a23cb94236f9f2d987b339cdfae73ad4d23"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.51/plumber-linux-amd64"
      sha256 "58eda06e74785bdf307207800529860d3b48f527a9b7e61c0bc57ea58a86125a"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.51", shell_output("#{bin}/plumber --version")
  end
end
