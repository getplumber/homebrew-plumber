# typed: false
# frozen_string_literal: true

class PlumberAT0214 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.14"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.14/plumber-darwin-arm64"
      sha256 "f5ac91120bff7f8145b26ec2a2bfe3032d758366321c0495be75f992126fcae9"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.14/plumber-darwin-amd64"
      sha256 "a05c9587481e66509a5c4eafd7da0afeefa4d73510214336f60bdfbc8beeefc8"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.14/plumber-linux-arm64"
      sha256 "e164efb2ac45214537eaed8043a6a03d298134c6340901d39ebe24c6fe32d24c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.14/plumber-linux-amd64"
      sha256 "9c0b62c5c173720084ab7d9336ff6350c94466981753e4de3211d246a40751d0"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.14", shell_output("#{bin}/plumber --version")
  end
end
