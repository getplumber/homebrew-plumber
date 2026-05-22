# typed: false
# frozen_string_literal: true

class PlumberAT0316 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.16"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.16/plumber-darwin-arm64"
      sha256 "e2b9096c4a0beef91e909e57a0010b9e466c2969fb106ec66082bbfccaa79bf3"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.16/plumber-darwin-amd64"
      sha256 "de1601e30b5e3929e9615aab84d65d9f7a0e9acff4cad285b9658cf3f7c1953d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.16/plumber-linux-arm64"
      sha256 "72cb891192354094f1aef8af938e166a511fafb40179fff4cd453afb26fb4980"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.16/plumber-linux-amd64"
      sha256 "8aceb8d31d81aa4b327f435117cc9c0d0d8e6c5430f4f76bef89430ec6e566c9"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.16", shell_output("#{bin}/plumber --version")
  end
end
