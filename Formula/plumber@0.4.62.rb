# typed: false
# frozen_string_literal: true

class PlumberAT0462 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.62"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.62/plumber-darwin-arm64"
      sha256 "429d5d1447a2777f446619d8024972c6dcf755074327c2c28062f7c6e6f75b01"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.62/plumber-darwin-amd64"
      sha256 "44f43e122dafa88c75aa6c56391727ef1e5c3d6df6cbf2a3941c8978d57c6ef3"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.62/plumber-linux-arm64"
      sha256 "10d52a00b81a78e0775b543158ca03e43194815cd0e1d4a8eeffcf5a488094ad"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.62/plumber-linux-amd64"
      sha256 "b4338648d5c0320a556fea7e8ab9e59fc1dfe5cbb6db5e5969c7f1f462c93e3d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.62", shell_output("#{bin}/plumber --version")
  end
end
