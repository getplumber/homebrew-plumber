# typed: false
# frozen_string_literal: true

class PlumberAT0520 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.20"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.20/plumber-darwin-arm64"
      sha256 "5b54ce1870b1b0ea4d49fae12726fe4777fa43db6b94672b4a19fd9080e939d5"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.20/plumber-darwin-amd64"
      sha256 "762294c7abb5b95119c9cf2cab71206e4232d798873335adb8ad04820774a2cd"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.20/plumber-linux-arm64"
      sha256 "c17d5953518763cf5f9d928ded8c490b7508444cdc435938b6389ed1a527b49b"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.20/plumber-linux-amd64"
      sha256 "5b2bed9ac92ca376e74d202b58a3dc3aabb873f8b46639045bff15d139ec2f9a"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.20", shell_output("#{bin}/plumber --version")
  end
end
