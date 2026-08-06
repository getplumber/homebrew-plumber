# typed: false
# frozen_string_literal: true

class PlumberAT0432 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.32"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.32/plumber-darwin-arm64"
      sha256 "9e1baa362f21a4d251dacd35ec0363debf9a4760b607a45a67ebb3105cb05f6f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.32/plumber-darwin-amd64"
      sha256 "ed7913cd6a4bbf4db8a97bc80a2cbcb0bbab3c6acb3b2c8f7b75078f711e67de"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.32/plumber-linux-arm64"
      sha256 "dcfb5cb16e53b53d68362d27f4db1d8f34ae3d799aaec4ba8b33c83706b9dcaa"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.32/plumber-linux-amd64"
      sha256 "d4d73f7035ac430d4af180eec93469f35cd122c7816d46c6d3d6972885e46fef"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.32", shell_output("#{bin}/plumber --version")
  end
end
