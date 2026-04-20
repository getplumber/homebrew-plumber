# typed: false
# frozen_string_literal: true

class PlumberAT024 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.4"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.4/plumber-darwin-arm64"
      sha256 "21b09646e1da73ca13a943aebe2a56e5daf7f4e503b42d7e46c36a8c88c90afb"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.4/plumber-darwin-amd64"
      sha256 "97cd050e7e7e0c07c0515542e9a7574c1d808d12aa9a9b0c1e27fe4b41e95cc2"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.4/plumber-linux-arm64"
      sha256 "5b57f449e4ba4a3ec864da04ec6086b983963ddbdfed07fd5aedf9885a93b607"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.4/plumber-linux-amd64"
      sha256 "c277c0a1f5952841521236deb6764cafc4e1bdd3fbef6edf42d2aaed1ada77be"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.4", shell_output("#{bin}/plumber --version")
  end
end
