# typed: false
# frozen_string_literal: true

class PlumberAT0437 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.37"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.37/plumber-darwin-arm64"
      sha256 "f099ecc1a773d5395b8ac716c8e6979020eff15614fe41ba7e6a5c18164f30b1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.37/plumber-darwin-amd64"
      sha256 "a0611a86e01cb6b35eee7ebce19922d008f7432753e4f1d442014afe3e783781"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.37/plumber-linux-arm64"
      sha256 "26a3b45ce9ad6af31861e618cd252d692fba097541f4156155887198a9d7323f"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.37/plumber-linux-amd64"
      sha256 "266d1c021e3fec33bdaafdc29a0238e31dd6205b1bba58ce7ca0ab02fc366e72"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.37", shell_output("#{bin}/plumber --version")
  end
end
