# typed: false
# frozen_string_literal: true

class PlumberAT032 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.2"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.2/plumber-darwin-arm64"
      sha256 "e567e45433cc6c317e8ed220a938d1fda3f7f22b9697116d325804a1e204b42d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.2/plumber-darwin-amd64"
      sha256 "7f4f96cea28ae005101fbd353a48c2306b127e9e4e525ec9459d9148ce615828"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.2/plumber-linux-arm64"
      sha256 "5d3ba9f767520b4299a237fd9ca3d0de88e1260cc2033f577efefde0dbbecfdf"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.2/plumber-linux-amd64"
      sha256 "23bfef966cb2faef35bd5a6328e719c3cf43f1e6d7c9f6a92efaaf7e7dc8b277"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.2", shell_output("#{bin}/plumber --version")
  end
end
