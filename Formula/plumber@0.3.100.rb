# typed: false
# frozen_string_literal: true

class PlumberAT03100 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.100"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.100/plumber-darwin-arm64"
      sha256 "81996610abf0f8245fbfecf3a1628049308a69581a224f7f511272332e83ba98"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.100/plumber-darwin-amd64"
      sha256 "7812a18c43824d0d6743c1f1a0f9c41232639f7b1cfe559c213b90de3d8d71ed"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.100/plumber-linux-arm64"
      sha256 "b11c423353a7e3b5aaa70be65c1e20984ba6c1450cf44943faa1bbe62465b5d6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.100/plumber-linux-amd64"
      sha256 "85eeff86c5c6a587437a896541b70d978471bc9a15d42d679ed938de22313648"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.100", shell_output("#{bin}/plumber --version")
  end
end
