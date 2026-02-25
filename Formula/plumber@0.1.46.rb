# typed: false
# frozen_string_literal: true

class PlumberAT0146 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.46"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.46/plumber-darwin-arm64"
      sha256 "6ea76bdeb250959b62762d6e36e27cbc2b4cca1dcb246d8a07e6af23f1cd7832"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.46/plumber-darwin-amd64"
      sha256 "18e0218227a2d6fbbeb596d2e2a8f8e8850358aa77782a37507b9a91dd474085"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.46/plumber-linux-arm64"
      sha256 "1bd649d9fd4ce7204c61ed17e7472d93926c41981bf3145823680b3a67ef64ee"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.46/plumber-linux-amd64"
      sha256 "9db96d9f353ff5a88eda00a972067200571ceace756a49259db45700f7f99a4e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.46", shell_output("#{bin}/plumber --version")
  end
end
