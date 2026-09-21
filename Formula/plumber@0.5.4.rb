# typed: false
# frozen_string_literal: true

class PlumberAT054 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.4"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.4/plumber-darwin-arm64"
      sha256 "bad8bfcbb56e21f6fded155402c1148fb213e31f60286e07c8ca5ca7c25c0be8"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.4/plumber-darwin-amd64"
      sha256 "112f9aa03c73802119a454360418ddb9a5f65e37755aacaf6015c2bc2a9a4e54"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.4/plumber-linux-arm64"
      sha256 "7c583b0cdeac16a72d22cb6644cc6706a7fa648e85ea57753a0f1cafc43a6ccb"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.4/plumber-linux-amd64"
      sha256 "ba843808d1749c38521ea89fb6454cb58ab1bb2e8bb11735c4d67e89e36ca8c6"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.4", shell_output("#{bin}/plumber --version")
  end
end
