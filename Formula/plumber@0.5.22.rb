# typed: false
# frozen_string_literal: true

class PlumberAT0522 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.5.22"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.22/plumber-darwin-arm64"
      sha256 "615b47b2ab1bfd8ea2cce35857a7e35de568aedfb3e5bba7b98b8de8c8c61e92"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.22/plumber-darwin-amd64"
      sha256 "5044272a586a2b7ae9466a480f5e36a892af89abe4bf68d6df1e650f220a68e5"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.22/plumber-linux-arm64"
      sha256 "acff7388c1c6e6cfd918f6a04de7d82306147a7029aa1699b146f53db6a8b475"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.5.22/plumber-linux-amd64"
      sha256 "0dedb034740a5fbd4d1906b021a5805e567ecb340bf89570cc3377aa90ff03bf"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.5.22", shell_output("#{bin}/plumber --version")
  end
end
