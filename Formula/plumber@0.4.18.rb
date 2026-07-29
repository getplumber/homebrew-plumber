# typed: false
# frozen_string_literal: true

class PlumberAT0418 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.18"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.18/plumber-darwin-arm64"
      sha256 "37fb2e67862ebb6e8fc0f484b90d1d7f7f5d52be2d4b07890759b78a9a0eb73f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.18/plumber-darwin-amd64"
      sha256 "b20bcde9532e26b5439357127a1ed59bf2c9766d9f347c05797ecc6955c8478a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.18/plumber-linux-arm64"
      sha256 "016aa386abd527f26eb26ec5c57f221522808cb07a1e2c4ab41a58906bdd7b05"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.18/plumber-linux-amd64"
      sha256 "a3006c7180ef9031cc2200809437fa464b13cf273d32f0a5fdff2291753d305c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.18", shell_output("#{bin}/plumber --version")
  end
end
