# typed: false
# frozen_string_literal: true

class PlumberAT0446 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.46"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.46/plumber-darwin-arm64"
      sha256 "681a3c4870038c084d77928ce7b53c66784b18ce57437e9fc113da753654638b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.46/plumber-darwin-amd64"
      sha256 "80b498d20a12330bf71c6ab2330287428ba48e85b3781bb3af2c5675f6a903af"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.46/plumber-linux-arm64"
      sha256 "74fd76016b34417b4444273adcff6d9181f5693aa1a297b0ecd33321f774b22d"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.46/plumber-linux-amd64"
      sha256 "a4fa49b29c6ba762aa118dd39f5824602064886f69fac166a9248197ea6dfaf3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.46", shell_output("#{bin}/plumber --version")
  end
end
