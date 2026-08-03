# typed: false
# frozen_string_literal: true

class PlumberAT0427 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.27"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.27/plumber-darwin-arm64"
      sha256 "a250703e69ff2674ac6b562aac6e0b9926cdc88fdad39d45d54c297ab5f332c6"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.27/plumber-darwin-amd64"
      sha256 "cab4d092dc71a18021bfe0611ed94f6a1e22ef568bff21079f11e1d801763234"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.27/plumber-linux-arm64"
      sha256 "9f8360aba176738684b01d8c13176b8f56723a2037e791f04dd7e1b61e8eb248"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.27/plumber-linux-amd64"
      sha256 "84a53c2eeed00650f9c3cadf2f3a1d1e39b0c16909ef019c0179f635e4750909"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.27", shell_output("#{bin}/plumber --version")
  end
end
