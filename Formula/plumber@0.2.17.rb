# typed: false
# frozen_string_literal: true

class PlumberAT0217 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.17"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.17/plumber-darwin-arm64"
      sha256 "2bb305f61e9fe4b40d85d86955dc3d3edfbc5449152d1dea64b9db5c761be6b6"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.17/plumber-darwin-amd64"
      sha256 "b25809e65c120c255bbbace3380bc8650828c38767d7194d91208fbe559b3a05"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.17/plumber-linux-arm64"
      sha256 "ffd72f6ec97a3a7af48ade7902abcc4ca45e9fe374c2b613a2e48488de384a70"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.17/plumber-linux-amd64"
      sha256 "b7363d1f4c0f574cb74f19ee321637bc5369b357efbcc45190dbccc6d9098c7e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.17", shell_output("#{bin}/plumber --version")
  end
end
