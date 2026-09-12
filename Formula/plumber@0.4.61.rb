# typed: false
# frozen_string_literal: true

class PlumberAT0461 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.61"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.61/plumber-darwin-arm64"
      sha256 "ab6919ad72f18468206bbda6ce336af430c4a3115abcd1198145d96966838120"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.61/plumber-darwin-amd64"
      sha256 "cf11508ba0bf6df4eaf553b1e32d710fd7a24ddd6374d26f00ff68b165a21877"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.61/plumber-linux-arm64"
      sha256 "6e36f147145c6ed7683c2ca99ff7320b4d87fbdf741ab73967a1d9a5505a36d3"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.61/plumber-linux-amd64"
      sha256 "f79aae01e5a96816fe3ba1844d690810d62261d838ed79a24ce2a881a5d190dd"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.61", shell_output("#{bin}/plumber --version")
  end
end
