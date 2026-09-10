# typed: false
# frozen_string_literal: true

class PlumberAT0459 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.59"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.59/plumber-darwin-arm64"
      sha256 "1f1330c7b364d1896a7638af85e175a843a6bb4a9b73f7818d6a1ab85bedbbad"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.59/plumber-darwin-amd64"
      sha256 "1c9c547dbf15a3e4150147f9ee86390ed404c81a22d3a9fc0747a68e718074a5"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.59/plumber-linux-arm64"
      sha256 "8a23daa4477fc62f0cba059b177f42b862cf3735f878b78eda0068d95ac5a4d4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.59/plumber-linux-amd64"
      sha256 "52f46b28f55cab50862a03dbfb6d7223623d5fe454237dca66ba160d937d7186"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.59", shell_output("#{bin}/plumber --version")
  end
end
