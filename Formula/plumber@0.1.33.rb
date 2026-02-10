# typed: false
# frozen_string_literal: true

class PlumberAT0133 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.33"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.33/plumber-darwin-arm64"
      sha256 "d69b4d904372fa0cc786dc232cec16a4e0981c5a1b5d7f1e052018acb9dc7be9"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.33/plumber-darwin-amd64"
      sha256 "211cf4f8ec72de88c1bab74400318b97aae029f2a7dcd5c044efc7611e59f78c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.33/plumber-linux-arm64"
      sha256 "c542b88bc97295b08c77a6801b913605ea93c67c330b486691f79de8577f3f85"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.33/plumber-linux-amd64"
      sha256 "fce71e63a7bb69337a2ad5eaa098ee99e5a9388b7ce1b36a90168b64688079f6"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.33", shell_output("#{bin}/plumber --version")
  end
end
