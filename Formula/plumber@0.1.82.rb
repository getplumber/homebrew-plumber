# typed: false
# frozen_string_literal: true

class PlumberAT0182 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.82"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.82/plumber-darwin-arm64"
      sha256 "76b26aafb695bbc1a1ef574e8fda6b9d825cb4f38f4899ee3da31b5aae3c37a7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.82/plumber-darwin-amd64"
      sha256 "4ec18dab1e22c326a88262890dba7704c6d03301abdde2a73cdc052cf01a7670"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.82/plumber-linux-arm64"
      sha256 "fc927e43c27d7926ef9e3e3bb464ed4bb53507e3ca34cb695f84d07b67ba06d0"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.82/plumber-linux-amd64"
      sha256 "272da8119fed7602f7236c87193c8b73acf7a3d2c875bdb4dc33fc814c9299f8"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.82", shell_output("#{bin}/plumber --version")
  end
end
