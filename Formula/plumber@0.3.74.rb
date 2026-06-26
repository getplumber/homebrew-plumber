# typed: false
# frozen_string_literal: true

class PlumberAT0374 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.74"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.74/plumber-darwin-arm64"
      sha256 "2de3aa6d330ed2bedaec50d2f29cc5e46f1c2491ffa6126051c37e9d315b00b5"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.74/plumber-darwin-amd64"
      sha256 "d7aae1b0c08c1928aeac2390d79fe228cd9e6abc25dfd3da72cf20117271504c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.74/plumber-linux-arm64"
      sha256 "359618818124548b89494e59ba10e7b06b73e05cce6c07b897d1baba2ef958a1"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.74/plumber-linux-amd64"
      sha256 "030bf56a0e7355a218c973e401da81e15dca99c79ab0685c8ff42e8c4fb1e9ab"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.74", shell_output("#{bin}/plumber --version")
  end
end
