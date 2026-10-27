# typed: false
# frozen_string_literal: true

class PlumberAT0713 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.13"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.13/plumber-darwin-arm64"
      sha256 "c92de59ac57730a2f3358e44cb946312bf61648a62aa81bcaba162483d957f9b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.13/plumber-darwin-amd64"
      sha256 "dfe3c1c536c5849ae2d6fac7271bf2ea7e3f684359cbb834b61b8f5279c9ce29"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.13/plumber-linux-arm64"
      sha256 "f92b6472238045c40a115fe71bf7b6aaa945edbf2d58f8c615ef2bcf0633f174"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.7.13/plumber-linux-amd64"
      sha256 "b6db6d9aee893c712af9a9b8960cf7ff7ef35859bdfd5f2fdf8fdfa54c27a4af"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.7.13", shell_output("#{bin}/plumber --version")
  end
end
