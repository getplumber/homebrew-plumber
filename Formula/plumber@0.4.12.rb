# typed: false
# frozen_string_literal: true

class PlumberAT0412 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.12"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.12/plumber-darwin-arm64"
      sha256 "96027d33b02464c56104a4484ec90ce28bfee5cf3458c70946f082179dc71d2d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.12/plumber-darwin-amd64"
      sha256 "fd9c82e34a2c7aa4298768e850247424bef96861f84418777aa6dd077f0975e6"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.12/plumber-linux-arm64"
      sha256 "b94b93738deb4f032d24bd8d02fd2f121187ef0705b923b9e4df078f0b611cf6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.12/plumber-linux-amd64"
      sha256 "0e0a5196af4d68874eae896912774bb3878db2a78154a37f3497e9b342bc9485"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.12", shell_output("#{bin}/plumber --version")
  end
end
