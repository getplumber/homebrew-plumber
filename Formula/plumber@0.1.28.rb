# typed: false
# frozen_string_literal: true

class PlumberAT0128 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.28"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.28/plumber-darwin-arm64"
      sha256 "032e4ca796cdcf203c7444910d8145982ab2fabb08a7c6add84c5157e61ed297"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.28/plumber-darwin-amd64"
      sha256 "2833f54eec0235538b06a942b78bbc6995e6e1ea5de3a84862a9d26acbbbe64a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.28/plumber-linux-arm64"
      sha256 "4a9fb2d8074a66b5f64c91929cb161ce309d2bcf961e211c8d7193f8af8220b4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.28/plumber-linux-amd64"
      sha256 "1d4571a4a095979dc832f22bc9d596be3ef5c7bf220074716027c0368aef22a9"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.28", shell_output("#{bin}/plumber --version")
  end
end
