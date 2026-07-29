# typed: false
# frozen_string_literal: true

class PlumberAT0417 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.17"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.17/plumber-darwin-arm64"
      sha256 "0d767ff60ce06960639080aa3804df1c20ff6dedd030a09a326bac2b04596644"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.17/plumber-darwin-amd64"
      sha256 "61a5feaa936e1ee5fa3988e04ab7be5f5c40cc264d32f146d17f1aa8b58890d6"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.17/plumber-linux-arm64"
      sha256 "bb0409b54d8c65efea183fec1b0a2f0528fc9db160d84d24ced0f8ad5e8b591c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.17/plumber-linux-amd64"
      sha256 "94bcdc5c1362f7f427dc131abe1ec877fa523b344b56f907c253148e2c0de24d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.17", shell_output("#{bin}/plumber --version")
  end
end
