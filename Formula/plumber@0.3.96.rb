# typed: false
# frozen_string_literal: true

class PlumberAT0396 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.96"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.96/plumber-darwin-arm64"
      sha256 "de0453528e05bce26ba56639508d7287c8d5ae762019c8b86a3f92b081af0cac"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.96/plumber-darwin-amd64"
      sha256 "dd29ccb545ad17aa54a265aa27fc2949b6345f70e61a3a17b9e1290c68f82571"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.96/plumber-linux-arm64"
      sha256 "bc9680536e7b09fe45542d30ffca8115564b20ed47a6af17d428f5cd98372e88"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.96/plumber-linux-amd64"
      sha256 "149b338048f70f570b26393080509ff49e53640411c9d636d177bedcefb1ccfb"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.96", shell_output("#{bin}/plumber --version")
  end
end
