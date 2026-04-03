# typed: false
# frozen_string_literal: true

class PlumberAT0178 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.78"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.78/plumber-darwin-arm64"
      sha256 "f93fe7254a5731f5f09f84e257c3648af5a12d0dc4a704676459664946933980"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.78/plumber-darwin-amd64"
      sha256 "97b7336c28efccea73880c93c1fe490b2f86fb20089bc98d7872721764387bce"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.78/plumber-linux-arm64"
      sha256 "acc560104769cf8acf8bb13a80102be2e3650b718c4d14ab141d0663c2a5a668"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.78/plumber-linux-amd64"
      sha256 "efc935dbd29d9b8b2ec4528f8899b09122eeee51c4ce7572ec3ed9d507bb0db6"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.78", shell_output("#{bin}/plumber --version")
  end
end
