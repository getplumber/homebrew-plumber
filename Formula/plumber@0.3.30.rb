# typed: false
# frozen_string_literal: true

class PlumberAT0330 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.30"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.30/plumber-darwin-arm64"
      sha256 "ef1ae6cbce3b0580670cc81737bda653477b254c2e6035f08e774dc42b26f41d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.30/plumber-darwin-amd64"
      sha256 "d7f394fefc5debf185b671a4528f01c7d1560ae3d7ac44feb2749d9059b83632"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.30/plumber-linux-arm64"
      sha256 "2738d691bff2aeac9692c84c115f0f62f68b68f3c14e4b1b26409229560aea48"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.30/plumber-linux-amd64"
      sha256 "fa97763415cd78adf30730741ec95747b986124b25defa66e17369755ad730a9"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.30", shell_output("#{bin}/plumber --version")
  end
end
