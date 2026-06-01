# typed: false
# frozen_string_literal: true

class PlumberAT0329 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.29"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.29/plumber-darwin-arm64"
      sha256 "9f848f88bea0af85efe798165b46327846b7df734cb5a91cdd9acdbe47df395a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.29/plumber-darwin-amd64"
      sha256 "6298d39d609271ee421603243a112a8fb431c6fe694f2b78ee424ba86fd5f112"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.29/plumber-linux-arm64"
      sha256 "98dff3b538494afe5609519e09fbf43664482c29509fadd5e444ebfa9720a005"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.29/plumber-linux-amd64"
      sha256 "edf8f7b4b9434a084a0c70d416bc85f6af0166ec95f5b47716ebd324c8796b31"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.29", shell_output("#{bin}/plumber --version")
  end
end
