# typed: false
# frozen_string_literal: true

class PlumberAT0442 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.42"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.42/plumber-darwin-arm64"
      sha256 "099a98af85b85055a2a1915bf470ea6c90616a07465716055133b30f8fb48f1c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.42/plumber-darwin-amd64"
      sha256 "b16389b16b7c9d810210a9c694d54c232377e716708b1951d4724ff54e0af9f5"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.42/plumber-linux-arm64"
      sha256 "5521754294ac24fc575170955cc5b87050dc6c251047ef5720b88e8f7ef75dca"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.42/plumber-linux-amd64"
      sha256 "eedfe50b2da4c5c5e9f0d50f69b81a8cfa68f78286a38dabec07f0556ce080f5"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.42", shell_output("#{bin}/plumber --version")
  end
end
