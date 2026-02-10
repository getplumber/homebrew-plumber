# typed: false
# frozen_string_literal: true

class PlumberAT0134 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.34"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.34/plumber-darwin-arm64"
      sha256 "2661306f353f64eda04e02301bbf0717e771ecc4f62eaea9431db7ccc7abe9e0"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.34/plumber-darwin-amd64"
      sha256 "d7c09988d9bbcccbeec45323e90a13162ffadf00f5df61e47fae09b4cb594856"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.34/plumber-linux-arm64"
      sha256 "6837fa6ad302aae0f2d89314baccba60b24c759e1ee4da704ca2b9e121dfe5ae"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.34/plumber-linux-amd64"
      sha256 "8555a38f45c035163541c09aa5eb25686a4e37c5469741b52d24f9396ada2a38"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.34", shell_output("#{bin}/plumber --version")
  end
end
