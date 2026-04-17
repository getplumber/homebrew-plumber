# typed: false
# frozen_string_literal: true

class PlumberAT0184 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.84"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.84/plumber-darwin-arm64"
      sha256 "c209772a5f3eb1b501b7299adbca6b2aa77f3a96b991d88482a204bd34bae36d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.84/plumber-darwin-amd64"
      sha256 "8d7dcf9c8b8f2f3f51fe4a16ef8f9289610a4cc4ca4c5893a1c6063c00b123c3"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.84/plumber-linux-arm64"
      sha256 "38cbaeff1530fba7a18590ced7714a648c0196f22543bda605e40210fdcf5aea"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.84/plumber-linux-amd64"
      sha256 "dced7642a2edcd6505b7dbd22defed8832bd667f90573dc9005027c73b048591"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.84", shell_output("#{bin}/plumber --version")
  end
end
