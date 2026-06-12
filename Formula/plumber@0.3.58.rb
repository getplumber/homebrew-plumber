# typed: false
# frozen_string_literal: true

class PlumberAT0358 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.58"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.58/plumber-darwin-arm64"
      sha256 "c5da54f7b6182ef848dbab3aefbdbcbaf87e814882ff676205b21e00a5f0fb6a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.58/plumber-darwin-amd64"
      sha256 "176d1806995828376fca30964021c209338a67aacf83980db4cd7b820fb75b2d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.58/plumber-linux-arm64"
      sha256 "58efe5ff1cf2fe61f0190a081e9514336359c74d248d6a25d6b15f7a0764ec62"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.58/plumber-linux-amd64"
      sha256 "a191e3676a42ff44b31379eb9864e1ed3e36c927c8dc3825614f89ff6d547e93"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.58", shell_output("#{bin}/plumber --version")
  end
end
