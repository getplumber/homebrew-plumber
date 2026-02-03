# typed: false
# frozen_string_literal: true

class PlumberAT0130 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.30"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.30/plumber-darwin-arm64"
      sha256 "83365fea819286b414091d52981fddb4b84268193a0238b640ac879dc11abbce"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.30/plumber-darwin-amd64"
      sha256 "952c57ad1c733730b5356028a13ad8b4caadbe94f828fcb7b57b919f038fa37e"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.30/plumber-linux-arm64"
      sha256 "06bdcc2752342cffccc95cad29eddccf67b67b9690bfd49c4a36c0ea9d638932"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.30/plumber-linux-amd64"
      sha256 "580b02d120c72f4e89f4b1c44782fc36464a81cda8f4a54f1759eabd3b1a2b58"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.30", shell_output("#{bin}/plumber --version")
  end
end
