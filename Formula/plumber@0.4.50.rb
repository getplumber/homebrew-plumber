# typed: false
# frozen_string_literal: true

class PlumberAT0450 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.50"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.50/plumber-darwin-arm64"
      sha256 "18b24b8414f041c625e75ad7e316110fbac98f62d3d62e5bbbc7568955daaba7"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.50/plumber-darwin-amd64"
      sha256 "3274a257ed358de936c3412935bede788b897e29622f37132bf74fd58751e08e"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.50/plumber-linux-arm64"
      sha256 "13cfcc2dd8a847863dc3d5a7dfb7ed438f88d3c33e21a95e8f83040bbd385d9c"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.50/plumber-linux-amd64"
      sha256 "aa639def2badcc3fcf50758b33147eb310a846a012bb18a57dd3508459586ec3"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.50", shell_output("#{bin}/plumber --version")
  end
end
