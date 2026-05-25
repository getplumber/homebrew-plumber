# typed: false
# frozen_string_literal: true

class PlumberAT0320 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.20"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.20/plumber-darwin-arm64"
      sha256 "75c0c66327320f68e0e756cbc8ffa171c36c67dd4b3e8abda6d6a1b10d0e5e5b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.20/plumber-darwin-amd64"
      sha256 "23ad44149c983d5188e1244d10591ec6ac6bd52b2a23e73757471dacce0fe573"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.20/plumber-linux-arm64"
      sha256 "eee05597c0f5576d88eaa62c673b785913a3a5d0dbe5dd2b7a1003dc717766f4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.20/plumber-linux-amd64"
      sha256 "a8690ac2fff84d79b57b79ccaff71213c043970924afbadee9ee850b90ac1a86"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.20", shell_output("#{bin}/plumber --version")
  end
end
