# typed: false
# frozen_string_literal: true

class PlumberAT0518 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.18"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.18/plumber-darwin-arm64"
      sha256 "1bb8b4ac0d986cdc1c406aa2fd719db03a5376002d8a008abafccbc20cf3890b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.18/plumber-darwin-amd64"
      sha256 "fce95de0515f1160319d13948fce0ff6b8a99c80a97002e3a6ecf3da281cf87b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.18/plumber-linux-arm64"
      sha256 "1ed2922ef6a137210da6e048c1d298dc254152ab6112427ab3cdab30a804434a"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.18/plumber-linux-amd64"
      sha256 "70755cad88747e85bfc5f09febab6c83c0eccce30b07b2514c137619b62ee1f8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.18", shell_output("#{bin}/plumber --version")
  end
end
