# typed: false
# frozen_string_literal: true

class PlumberAT0368 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.68"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.68/plumber-darwin-arm64"
      sha256 "a1dc6528847a5eabddeaadd3b00384c31bd84d375c4bb18d8782f6cddbd8ffb4"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.68/plumber-darwin-amd64"
      sha256 "131338d329ca0b491836d46a3db6fe33587b0f50d0c63b06637e8ea1b471d9ec"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.68/plumber-linux-arm64"
      sha256 "e7232677edff5fba9b0f38089963494f5aaefc8e8c2869a956f9ae269d05a331"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.68/plumber-linux-amd64"
      sha256 "ca0956397c6fa0594ae2c1652847fb6d327164ff917f28df1f20838694e8339e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.68", shell_output("#{bin}/plumber --version")
  end
end
