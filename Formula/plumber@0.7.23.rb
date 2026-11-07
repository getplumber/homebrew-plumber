# typed: false
# frozen_string_literal: true

class PlumberAT0723 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.23"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.23/plumber-darwin-arm64"
      sha256 "1fb2a86768647775de2f66804d2afad388c062c1adaa185b059671ccd777c804"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.23/plumber-darwin-amd64"
      sha256 "6efcfdf500cd6a71183db16b868575e03ebdb6bca30b9d82935e48c4ae090082"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.23/plumber-linux-arm64"
      sha256 "5eb51a10dcb9b8a7d3b8b3df93acdd31d910bb0c7f8f69289d44e88f0131f6e8"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.23/plumber-linux-amd64"
      sha256 "ffe0ceaca011729a90524558e2d7b042fc2eb15286f3458190810ed8f840dc2e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.7.23", shell_output("#{bin}/plumber --version")
  end
end
