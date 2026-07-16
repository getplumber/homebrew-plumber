# typed: false
# frozen_string_literal: true

class PlumberAT045 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.5"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.5/plumber-darwin-arm64"
      sha256 "4d164bf9f51a8b324f5a6d37882f5ebf2eb41069452322a9eb1a4cd37d402162"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.5/plumber-darwin-amd64"
      sha256 "f6e24950d1907e490227efa7107755b1f31ee4a9671a87ac4f1eb8203c13d003"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.5/plumber-linux-arm64"
      sha256 "0c31bced6ed9df4deb0c26ae4e2737234562f7482578c5c66721725fbc351212"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.5/plumber-linux-amd64"
      sha256 "17d8471ba151cb9d47c58bc24e188d9d48af1d479aead8d9204b454d27fc9bbf"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.5", shell_output("#{bin}/plumber --version")
  end
end
