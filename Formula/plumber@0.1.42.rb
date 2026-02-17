# typed: false
# frozen_string_literal: true

class PlumberAT0142 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.42"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.42/plumber-darwin-arm64"
      sha256 "bbcdf3627f4de15c37b2a6406974c5da0a26b91058b450efc8502c81a1320039"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.42/plumber-darwin-amd64"
      sha256 "7fff20e8a66830705b2ef860066826cedd460eec59a21df111b29d71c7173585"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.42/plumber-linux-arm64"
      sha256 "6271d035f33814cfd8cd2d971b146c31c91cbd1f2144ff0148af5791f1e46687"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.42/plumber-linux-amd64"
      sha256 "f05c47c2389eb0f2d08ab67a5b41b1994984d92a4f82488d0a3f9201d453ea64"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.42", shell_output("#{bin}/plumber --version")
  end
end
