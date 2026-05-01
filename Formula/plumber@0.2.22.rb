# typed: false
# frozen_string_literal: true

class PlumberAT0222 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.2.22"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.22/plumber-darwin-arm64"
      sha256 "94fa907c5d27f3ed1df91c162953561df8bcdb5a823c12564c0d6db1ba3a9242"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.22/plumber-darwin-amd64"
      sha256 "eafd6af843c9e7a657f15ddfe661d0bf1e2185abb62c81a69f79789f904ee125"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.22/plumber-linux-arm64"
      sha256 "76b2454068024b2e3a778dfdde00dd7c4e171a8b4f4417dd5f755364adb99b53"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.2.22/plumber-linux-amd64"
      sha256 "485b7ad91ba506b59b1d219cbe6d650ab1c823b1a68243cc3fb6b412c6da116e"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.2.22", shell_output("#{bin}/plumber --version")
  end
end
