# typed: false
# frozen_string_literal: true

class PlumberAT0162 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.62"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.62/plumber-darwin-arm64"
      sha256 "a2338a11c581180aabfdb79190dad4e37acfb6a226ded7accfd102e9e9ea7116"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.62/plumber-darwin-amd64"
      sha256 "3e773474b3aa594d2f535a50104f33a809b6146304dfa67133bf831b6a823b56"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.62/plumber-linux-arm64"
      sha256 "5ce036d5cde1c5079991aaddfec3abc8b3f9ff82b182372291abfdaa07b3d77e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.62/plumber-linux-amd64"
      sha256 "5b4cfa35d3589ead2434285b279900396efc500f257abf353b214117d918f5e1"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.62", shell_output("#{bin}/plumber --version")
  end
end
