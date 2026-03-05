# typed: false
# frozen_string_literal: true

class PlumberAT0154 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.54"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.54/plumber-darwin-arm64"
      sha256 "fc22797e6539fa5f82f67c2a374104f4eb7e351bed744be4d6de972231238193"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.54/plumber-darwin-amd64"
      sha256 "51a73eaa608fef27fbc34d17d219ad2a3533804911cc98bad7dcd9ec7709cafd"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.54/plumber-linux-arm64"
      sha256 "0d4ce15d558a7499e57da80b48eaf1a1f92111adf6332a22b1c34a9bd8f8c8bf"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.54/plumber-linux-amd64"
      sha256 "2b89c56d3871f00b21831e87e2e0120e311f5e886daa2c3847e82b2b5eaae98f"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.54", shell_output("#{bin}/plumber --version")
  end
end
