# typed: false
# frozen_string_literal: true

class PlumberAT0355 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.55"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.55/plumber-darwin-arm64"
      sha256 "71a614c6b40140654c1d1ace20b4243ddf617a0cb9f10de40b7dc96701d87047"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.55/plumber-darwin-amd64"
      sha256 "0c2a2fa23a9ff1859d8efd1b2b30151445e5a33123e28b78d0563f41641126ff"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.55/plumber-linux-arm64"
      sha256 "b00c7f9e4cec7072bbb52b34bbe5f31e64cc780f6c87e34581bbd3b0eea3c538"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.55/plumber-linux-amd64"
      sha256 "a9a5173b9f29d144a9389e01bb943b61747188f239eb0175cc7bc4c32674aaaa"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.55", shell_output("#{bin}/plumber --version")
  end
end
