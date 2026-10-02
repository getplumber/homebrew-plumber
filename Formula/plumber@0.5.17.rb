# typed: false
# frozen_string_literal: true

class PlumberAT0517 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.17"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.17/plumber-darwin-arm64"
      sha256 "cef03f0ab32cda1c60ee3397f0f373b5e2f423271d610a1394bc18927b478986"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.17/plumber-darwin-amd64"
      sha256 "f4bfb7f7d9b94f6f2e133cb52ae9ad7e0c1923afc0eb25caf5e492c7a93447c7"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.17/plumber-linux-arm64"
      sha256 "8d663bde885484925116cf444f47197aa034ccaef59721f1d4de8958f47b76cd"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.17/plumber-linux-amd64"
      sha256 "656f64fa9a8e7403cb73e982a7dad747b900a8b6595f6c386477fb4bd0cba852"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.17", shell_output("#{bin}/plumber --version")
  end
end
