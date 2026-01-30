# typed: false
# frozen_string_literal: true

class PlumberAT0125 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.25"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.25/plumber-darwin-arm64"
      sha256 "fe08ea22a88647deb308558986534e6a079282c74994125b385952726eb9bdee"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.25/plumber-darwin-amd64"
      sha256 "55eccffad34ebf2802333a014fdbd6c9ab3b7479a32790243fedd88d88de54e6"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.25/plumber-linux-arm64"
      sha256 "774fa66e898f496074319879f6df3a00cc23504031a6209f647114821f8fe23c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.25/plumber-linux-amd64"
      sha256 "e25c6dc496be66dc6dcdce076d07075febdd94520026967295a5121fad197344"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.25", shell_output("#{bin}/plumber --version")
  end
end
