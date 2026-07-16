# typed: false
# frozen_string_literal: true

class PlumberAT048 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.8"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.8/plumber-darwin-arm64"
      sha256 "39e200dd7ba979f11dbf81d087e210f36484b917a15b00802df6c7393e7f3a25"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.8/plumber-darwin-amd64"
      sha256 "3a4d78853f4d4d6320539e0e2d22b477d304687a7925ff65c5c48a4cd8b993fe"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.8/plumber-linux-arm64"
      sha256 "bee09bda5129456004b1e497d8b68fe83af68d8fcd57fbfb7accffd45ca2d5e8"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.8/plumber-linux-amd64"
      sha256 "1c1379e4e6fce3a6b2cf0fede2fbfd89bd9cebbb8aadae3be95bc3d365a9c8a0"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.8", shell_output("#{bin}/plumber --version")
  end
end
