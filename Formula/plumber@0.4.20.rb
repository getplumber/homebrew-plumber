# typed: false
# frozen_string_literal: true

class PlumberAT0420 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.20"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.20/plumber-darwin-arm64"
      sha256 "19b90fe4bc5f5c9474acfeb93ec2562788afc68b8639718451e496865e1915f7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.20/plumber-darwin-amd64"
      sha256 "2ad8ea957ea0ce436e526c1249776f21a0bc21616503fa148a1477468fd100ee"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.20/plumber-linux-arm64"
      sha256 "5f0249e7bdc0b1934c8c5a01d8305f7841dd21abbdb0684e2c20a61ab04c8557"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.20/plumber-linux-amd64"
      sha256 "a249c5213c0a098d709c114b717ecbe2940209f556972627f842fed517544967"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.20", shell_output("#{bin}/plumber --version")
  end
end
