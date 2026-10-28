# typed: false
# frozen_string_literal: true

class Plumber < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.16"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-arm64"
      sha256 "c268de20cedc9798945e92883f7a9792f0001491a83a086b650a70849305736e"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-amd64"
      sha256 "fadbb06bb5f6e6693101e2d2b6ee5ead6139824c3ef038c347004541ef411803"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-arm64"
      sha256 "6695c7e2e7f654db31d00440c1ad83df5eadcb18b747af573b75d753aa0110d3"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-amd64"
      sha256 "34ccef651314f72c404a5ea0ab926c809d199a77b51f2d4be957cc48a0c8568d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  test do
    assert_match "plumber version #{version}", shell_output("#{bin}/plumber --version")
  end
end
