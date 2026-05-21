# typed: false
# frozen_string_literal: true

class PlumberAT036 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.6"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.6/plumber-darwin-arm64"
      sha256 "5a8fc672a451f62cd4b98828c0b0186849d7b3aa9b23c71d2cbb75853bf364d9"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.6/plumber-darwin-amd64"
      sha256 "0528611d4c1c0a42d39d417dc70b3f6b2c5fc3cf8ce7f27c03cfb70b5a055ebd"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.6/plumber-linux-arm64"
      sha256 "dbd93dd4897cedfde1f1961688f273b3bcf2700569039d9d8cb8e2e5a9c012b1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.6/plumber-linux-amd64"
      sha256 "3bd10f4e177f6973ad5279f23e69ffbe853af3eb65e0cc0bddf96300900b827b"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.6", shell_output("#{bin}/plumber --version")
  end
end
