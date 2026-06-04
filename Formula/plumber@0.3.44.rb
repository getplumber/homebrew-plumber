# typed: false
# frozen_string_literal: true

class PlumberAT0344 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.44"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.44/plumber-darwin-arm64"
      sha256 "0ddc7fa729201e4a3b45395697077b629e2726fc36018341eb8e8be94d5d66bf"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.44/plumber-darwin-amd64"
      sha256 "4179a412d173a68f6d65bde82939867dfe6247abbad0807a0c13eebcf4881725"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.44/plumber-linux-arm64"
      sha256 "1f5eaff63b1d060383a63aa10afe099f4aa3dbcf04949cb4b7c9eb49170fe2ea"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.44/plumber-linux-amd64"
      sha256 "d45c1e556b27cd8eadd560eae6af958ce229b10e6dcf8f3fb97483f2e885e748"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.44", shell_output("#{bin}/plumber --version")
  end
end
