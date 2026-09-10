# typed: false
# frozen_string_literal: true

class PlumberAT0458 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.58"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.58/plumber-darwin-arm64"
      sha256 "97dc9d220fe81070b89c6c226ad365c792a21aa9e0b4ba313b577b8a57ffabd8"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.58/plumber-darwin-amd64"
      sha256 "4d45a1ab84b79605b623ffdf48017d7ba425ea91770bf436d8988679ab29e08d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.58/plumber-linux-arm64"
      sha256 "62482e7a06be4369d51195877cd379fa2eb43a95ef08937a5e7f817931a21966"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.58/plumber-linux-amd64"
      sha256 "350ee3195566462b647a882a0eb35c70fc9e507b46f3d144d0782bd26b4baddf"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.58", shell_output("#{bin}/plumber --version")
  end
end
