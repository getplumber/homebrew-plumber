# typed: false
# frozen_string_literal: true

class PlumberAT0720 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.20"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.20/plumber-darwin-arm64"
      sha256 "4636a7e565d127d44bab08d0f11b2fefec2df0f744eab8e1f95191ce92a9e335"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.20/plumber-darwin-amd64"
      sha256 "22134b09d995d0caebf1563074f2034409b368c09ced0a1f8bb0f14639decaec"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.20/plumber-linux-arm64"
      sha256 "8c44c6fda653390e2b19ab01a3071b21cc4fc3ed849d9bee01b92dcc2d9c69ea"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.20/plumber-linux-amd64"
      sha256 "283f7aee607797b46a243b9f5551c6a400b010a703459df519e256757e6bb9f2"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.7.20", shell_output("#{bin}/plumber --version")
  end
end
