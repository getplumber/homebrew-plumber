# typed: false
# frozen_string_literal: true

class PlumberAT0435 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.35"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.35/plumber-darwin-arm64"
      sha256 "34b8b781f2a185dc7d149f148124188f1ab817c51102ba8564457b6af98d4dae"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.35/plumber-darwin-amd64"
      sha256 "bdf65b86044870ff14eabc298709cf22aaef2036b356366818125c16fbac7540"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.35/plumber-linux-arm64"
      sha256 "e9a1904b92c75de81b6f2bd5eca21a8e41f147980763fde4e39ddb12d10a1695"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.35/plumber-linux-amd64"
      sha256 "0ce1c54dfc2ead61dff0b83c5c0013b41b3f73d3b737e16b2e55a533f96737ee"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.35", shell_output("#{bin}/plumber --version")
  end
end
