# typed: false
# frozen_string_literal: true

class PlumberAT0361 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.61"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.61/plumber-darwin-arm64"
      sha256 "da60c274de713b6809b91d72491ce789af974bc77a4c0994734edcf64a2cd04b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.61/plumber-darwin-amd64"
      sha256 "0e131e32c45467a1ad1a133c8161e47caa07f2d9766515aef30700078d99adbd"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.61/plumber-linux-arm64"
      sha256 "acf24b75ab1c97c4f41d791fb5bdcf009abe710c760ed298dae9c390541d15dd"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.61/plumber-linux-amd64"
      sha256 "07e5e866f529f9acd038bb7ec53b314b4ad8caf11af3fd536b4bb785a736927c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.61", shell_output("#{bin}/plumber --version")
  end
end
