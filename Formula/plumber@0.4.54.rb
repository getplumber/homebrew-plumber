# typed: false
# frozen_string_literal: true

class PlumberAT0454 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.54"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.54/plumber-darwin-arm64"
      sha256 "71b90b0dfafa8705eec3b4eacc90b187ee67d163c66b33eff21d623176d58456"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.54/plumber-darwin-amd64"
      sha256 "fa86539fce275b011c94538d4149a2b56eb763d40a4cc940d76bf7f8dd3fe612"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.54/plumber-linux-arm64"
      sha256 "aff51f63d2302d54272bf5f29eebb4c81dd1e24d6c2c02f3df4e758835ce56fa"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.54/plumber-linux-amd64"
      sha256 "ef4f14876f072017057d6b30ed49be96031161f6c245c64d5bedb9ef3d63ab75"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.54", shell_output("#{bin}/plumber --version")
  end
end
