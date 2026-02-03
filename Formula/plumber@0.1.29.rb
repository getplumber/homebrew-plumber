# typed: false
# frozen_string_literal: true

class PlumberAT0129 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.29"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.29/plumber-darwin-arm64"
      sha256 "c6a4ef57687c92217ea704cb345ee3d7f2bcca239cfd99ed97cd0131d9627c9b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.29/plumber-darwin-amd64"
      sha256 "07a7c9ea1c29a87ae636e1c9055277e0db6434c1984f31c5e4e641be8a8eb645"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.29/plumber-linux-arm64"
      sha256 "6a753cee5dff96f32544ec0fb50acf5abc44100e1663443d4a6fa6f825be43e3"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.29/plumber-linux-amd64"
      sha256 "0c975db79e7873a60f04fbe1052d14f7a3ac99dd1f4efbabf2fdb9c1863e28a9"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.29", shell_output("#{bin}/plumber --version")
  end
end
