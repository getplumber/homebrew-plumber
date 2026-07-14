# typed: false
# frozen_string_literal: true

class PlumberAT043 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.3"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.3/plumber-darwin-arm64"
      sha256 "4a03ebd01058b90affab62fbf5532e571856fc98469297a5655ced3e690a3388"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.3/plumber-darwin-amd64"
      sha256 "66ce8bdc869cb83dec788c6f84ac891e78fd3987aae5ca48206a8751061573ec"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.3/plumber-linux-arm64"
      sha256 "adfd36645e61efe6d9f4b6a9a693c9244eb5ee63ffbb655feb896ea5e53c3a5f"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.3/plumber-linux-amd64"
      sha256 "8d2ad5d34340ce7505a49ae2477c6d550613d1578944dc528f1dbafbcf50a348"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.3", shell_output("#{bin}/plumber --version")
  end
end
