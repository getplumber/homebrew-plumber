# typed: false
# frozen_string_literal: true

class PlumberAT0149 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.49"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.49/plumber-darwin-arm64"
      sha256 "fc3824b88fecad9f801ff9816cd10dfb9898985ccd46ed2e30696acefd17e6d8"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.49/plumber-darwin-amd64"
      sha256 "b1009e55670fbcc1b7e2574835a08e034cf9a4a0f31fcda9575c9a0859c199b5"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.49/plumber-linux-arm64"
      sha256 "8a5d28fcec7ebd57cc86d4c53669c4f5df286be0d08ebdc8ea98358ef9abfe22"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.49/plumber-linux-amd64"
      sha256 "65c0fdcaa3d1afe7230cecfe00ab79da2f7e3845cc34d2daf79794ba6c94bbb2"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.49", shell_output("#{bin}/plumber --version")
  end
end
