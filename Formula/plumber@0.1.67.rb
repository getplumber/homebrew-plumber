# typed: false
# frozen_string_literal: true

class PlumberAT0167 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.67"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.67/plumber-darwin-arm64"
      sha256 "bd28352b5f8c90e56aec3a3ca8869d84ff95c49c4c4884bfafd51d28dd39da87"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.67/plumber-darwin-amd64"
      sha256 "f3598ef056a89e174901a084965782c97c067652beac45ff042baeaf267efccd"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.67/plumber-linux-arm64"
      sha256 "1928883befe20880b448a98a59daac8cbd15f1f109d686ad8b5897e45ced28aa"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.67/plumber-linux-amd64"
      sha256 "fdaca5bd22746d466c9f20bd9e13b53dcd572d03cd8a4c8f9fa57fd342540a14"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.67", shell_output("#{bin}/plumber --version")
  end
end
