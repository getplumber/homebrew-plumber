# typed: false
# frozen_string_literal: true

class PlumberAT0386 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.86"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.86/plumber-darwin-arm64"
      sha256 "e46d35b927afa010243150a754ae8c3771e2d00d5d45a832c87c2586fb7e1e71"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.86/plumber-darwin-amd64"
      sha256 "3d6362f65959f22623acf883d3f9c831456142191bc8bf44de861f130caac5b9"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.86/plumber-linux-arm64"
      sha256 "efd72efdb93424382c29150b20df928e1035c2fd4a79d70511c9042a30a24b51"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.86/plumber-linux-amd64"
      sha256 "524fd62c75458632bed0d50cb4a4035c611d7580c65249591d8cc137fcf19df8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.86", shell_output("#{bin}/plumber --version")
  end
end
