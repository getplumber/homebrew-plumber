# typed: false
# frozen_string_literal: true

class PlumberAT0168 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.68"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.68/plumber-darwin-arm64"
      sha256 "72fe2fd6b770989ed3dcda7e83dd6c477a48009c724f2ba9ac40cd4a2c39c508"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.68/plumber-darwin-amd64"
      sha256 "9d9e9b52b44c0b2cb5e8ad062881020a8229a694b5512aefaafcb785a11338b5"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.68/plumber-linux-arm64"
      sha256 "fcdd919d7f508358999629d65e33704d2670bc651c6d5e0ed7a6a7f080fe3e11"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.68/plumber-linux-amd64"
      sha256 "8b2fd7f046b8cda7018cbcba197190122a978038eb11dbe990520ce85cfa87f0"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.68", shell_output("#{bin}/plumber --version")
  end
end
