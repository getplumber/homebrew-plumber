# typed: false
# frozen_string_literal: true

class PlumberAT0218 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.18"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.18/plumber-darwin-arm64"
      sha256 "6e35ae503abbcadc141ff96a6103c81deb81b0491ccc14196ff05fe23ca6d285"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.18/plumber-darwin-amd64"
      sha256 "7a36276795e1b89e6b0a155329282a2afc8f37427ff03d8854bba63c63ebf0e4"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.18/plumber-linux-arm64"
      sha256 "48b6941e662b217ed79a2f9996df51295d3950221495c7d7fdf4349c30b29f47"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.18/plumber-linux-amd64"
      sha256 "e16d756be6cd31e5efe5541d3a30e2f4aab08393b17f2ea059311da88c9ad83d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.18", shell_output("#{bin}/plumber --version")
  end
end
