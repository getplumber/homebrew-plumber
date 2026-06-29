# typed: false
# frozen_string_literal: true

class PlumberAT0377 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.77"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.77/plumber-darwin-arm64"
      sha256 "27ab4f0208047803e8e9ab04d9e2e7b32794b22530fec78fcb133326692337b7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.77/plumber-darwin-amd64"
      sha256 "24cbed1e8b2f755e58f18c4670f2017765de97bbb54cf65c4d94d03a02b0df92"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.77/plumber-linux-arm64"
      sha256 "64868e1d3d63d0faba794731371d17b2d546c3133ee017f3cbf6f28313460f0d"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.77/plumber-linux-amd64"
      sha256 "df1eb091a385fa59be3a1eed0b44659881680acf2419942248651bd5191646e0"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.77", shell_output("#{bin}/plumber --version")
  end
end
