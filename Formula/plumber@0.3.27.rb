# typed: false
# frozen_string_literal: true

class PlumberAT0327 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.27"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.27/plumber-darwin-arm64"
      sha256 "45222d6262d6898fd487d534bee2a30676337a20d196e1ae9145d153d7c215ca"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.27/plumber-darwin-amd64"
      sha256 "63263f82ee504a3d54299563fe50f5b9ebee6014a85575a9e14bc97535dd7b5d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.27/plumber-linux-arm64"
      sha256 "9deef160eafd4fd83bc0dfcdfd16ea232734f2a6515e663dd96da715fdc6c1e5"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.27/plumber-linux-amd64"
      sha256 "9acff7e8a1f463e456818586353ab51d4e76137230ad0f7221b4a332ebe3ce4f"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.27", shell_output("#{bin}/plumber --version")
  end
end
