# typed: false
# frozen_string_literal: true

class PlumberAT0511 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.11"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.11/plumber-darwin-arm64"
      sha256 "53cb537bdd0c966b222fe8264e25fbcb96891499940ead99ccea3f1e9fe97fef"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.11/plumber-darwin-amd64"
      sha256 "ce7a695be77cbb751d649dc2aec6829230418483a392a0340fa7dae21a7c67ad"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.11/plumber-linux-arm64"
      sha256 "e80210d3eee00e76004d37eead87cf136734c8d2fe442685332e4be246460668"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.11/plumber-linux-amd64"
      sha256 "eac9727c81dfaf1a2efbd93afdfa39a21a7b5220d2e06b41586900b5072a922c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.11", shell_output("#{bin}/plumber --version")
  end
end
