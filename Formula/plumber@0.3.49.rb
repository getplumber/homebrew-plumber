# typed: false
# frozen_string_literal: true

class PlumberAT0349 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.49"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.49/plumber-darwin-arm64"
      sha256 "4e58baa4720878fe746cf4364cccbe9f97a03ef90b05fa1eb885e017a7db07a0"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.49/plumber-darwin-amd64"
      sha256 "a79c73f506a4f100655c13e238a6e26d9e683de486e85b47e0d395b5a2d6d36a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.49/plumber-linux-arm64"
      sha256 "b135b4e372d5513ba1e92596a950ca12dd5b6777d764c538cd526033714337a9"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.49/plumber-linux-amd64"
      sha256 "e77645823df0381f3d2aa7bf88b82a70d434daab98efe75e9762a05ab7fddd71"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.49", shell_output("#{bin}/plumber --version")
  end
end
