# typed: false
# frozen_string_literal: true

class PlumberAT075 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.5"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.5/plumber-darwin-arm64"
      sha256 "48c500a5f5fcf63fd6471d3fb6b2b21ee7341b48f70ebd44879bc5a7a8b59d04"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.5/plumber-darwin-amd64"
      sha256 "95d83be255770a61d6aa389a0c495caceac5dc765a7df7a15df4617b8679c777"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.5/plumber-linux-arm64"
      sha256 "d9346818934bfa2d29e9090da0d0870f15e067d2fdeb9bc925c9497aeb662d28"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.5/plumber-linux-amd64"
      sha256 "1e5a2c38c2e8175aebadae8286eb920c33524582a613c6ef2a1cc8de5582a9ed"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.7.5", shell_output("#{bin}/plumber --version")
  end
end
