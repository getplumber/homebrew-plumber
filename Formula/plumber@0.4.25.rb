# typed: false
# frozen_string_literal: true

class PlumberAT0425 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.25"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.25/plumber-darwin-arm64"
      sha256 "f2159764e6a228c1ea127dcefbd23fe699b23f7be73cede03b8a83611ea96cf9"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.25/plumber-darwin-amd64"
      sha256 "f7e91053e6df71eea00aeb0962515575eaeea95b010de58fef3a9a00210de589"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.25/plumber-linux-arm64"
      sha256 "1d6a804686165862bb510f841210fdb494d5694f276acdb54f5abdcac90406ed"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.25/plumber-linux-amd64"
      sha256 "d82176d0769187cf1c59e6bf1384f289f8e4785b35f82b5f3d583783ae6f8ce0"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.25", shell_output("#{bin}/plumber --version")
  end
end
