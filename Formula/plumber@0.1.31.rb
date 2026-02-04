# typed: false
# frozen_string_literal: true

class PlumberAT0131 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.31"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.31/plumber-darwin-arm64"
      sha256 "b1af1922f55a3a139911827a98c85671b57e3af80745bd1d4b217e58309d2118"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.31/plumber-darwin-amd64"
      sha256 "b629cf58aea6062f51b28ba46998a3c26ec67cb4209f5ba7a576bf4cefecd8d2"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.31/plumber-linux-arm64"
      sha256 "8fd2711b4cb93ccc23a55ec09e7307ca483484c68c629f7c5cc80d37c0d0e829"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.31/plumber-linux-amd64"
      sha256 "b90b8be5b3e3aa1d70778a3dcd1ff16a48e520cc4ae84e0b478f1f5e46bbe240"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.31", shell_output("#{bin}/plumber --version")
  end
end
