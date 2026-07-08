# typed: false
# frozen_string_literal: true

class PlumberAT0397 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.97"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.97/plumber-darwin-arm64"
      sha256 "ce7d0a4a8044c584ff2a54ec3f273f8b1c47e44209393e7a9b58688891d4a978"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.97/plumber-darwin-amd64"
      sha256 "2f857c4f869f62e59fdd03a23687fbd1210a5260cc3ea67aadb023953a9a218b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.97/plumber-linux-arm64"
      sha256 "a83369d6d8539efd85ef0067e6d02c13ffd4d8030a967c4ef659f5fd017606b3"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.97/plumber-linux-amd64"
      sha256 "feacf62502124ace4b6e9ecce677f17bcbbe353718b3316786d4c05dbe3beaee"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.97", shell_output("#{bin}/plumber --version")
  end
end
