# typed: false
# frozen_string_literal: true

class PlumberAT030 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.0"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.0/plumber-darwin-arm64"
      sha256 "392466d33b97ebfb3777cea7194e92bf161393635bd3f6dd6af51260076d908c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.0/plumber-darwin-amd64"
      sha256 "482dd8095cb556ab4635e7599330965e0bc7046418504c8cada90de207321986"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.0/plumber-linux-arm64"
      sha256 "1b8dc33071e0212d15fd5c18df35a40e38e440fc8a3c0bd8c84df87da9d7363e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.0/plumber-linux-amd64"
      sha256 "1f742797de601ced3121a3d22c9488ecbd7610c0e0b9ce0a8fc5355e53a5830e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.0", shell_output("#{bin}/plumber --version")
  end
end
