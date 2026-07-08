# typed: false
# frozen_string_literal: true

class PlumberAT0391 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.91"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.91/plumber-darwin-arm64"
      sha256 "9e2efc86518f20042a58b9d494277ea6da341a8a7a3dfb31bc3d57149b8fd3d1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.91/plumber-darwin-amd64"
      sha256 "2b560a84cd050566f81de03bb4e1ced4ea45a0947ba3927c5a17b958b7dd5828"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.91/plumber-linux-arm64"
      sha256 "009c33d88043a673c091f75f0bcfeb4478aea2c4fcbd0de750574024fa71ec44"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.91/plumber-linux-amd64"
      sha256 "6e6f8d02a837e93b0c883c06a330dc4f961b4e9cdfb566451a35f06e135ace21"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.91", shell_output("#{bin}/plumber --version")
  end
end
