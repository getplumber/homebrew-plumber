# typed: false
# frozen_string_literal: true

class PlumberAT0332 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.32"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.32/plumber-darwin-arm64"
      sha256 "9a085823943aa2f6180b059168e49f8a5e9fde6962bd2b4157458319f9ff42cb"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.32/plumber-darwin-amd64"
      sha256 "afcf295934c28457d4a2b854c78b99a1dc1ad386dd54fcefde7fa2e0bcf3c36f"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.32/plumber-linux-arm64"
      sha256 "9bd1bac7730e65f031beebc4962f0b07a2beb06e861fc9a768f5e0e95ec0f16e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.32/plumber-linux-amd64"
      sha256 "afe457a1ed323e7d20f5954d3fb7797f0486816a54d69991bac7aa8eb9629e2e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.32", shell_output("#{bin}/plumber --version")
  end
end
