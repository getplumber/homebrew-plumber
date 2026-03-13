# typed: false
# frozen_string_literal: true

class PlumberAT0165 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.65"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.65/plumber-darwin-arm64"
      sha256 "ed0f9876b94eaa579186421379edfc472403312af04d32b3aa937e36124a1df3"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.65/plumber-darwin-amd64"
      sha256 "8bdabecbd2aaaf53ec529a2ab467f680b862e864e8abb69805ff939958eba122"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.65/plumber-linux-arm64"
      sha256 "c2c329a09b76169843e1a25dd4b86f1fda9681cbc38d8ee4706cfd629eca5341"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.65/plumber-linux-amd64"
      sha256 "c1ad521b242abfc3b949c86e7360bfeb3581aa5ec91e028ddad4c3d40089a781"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.65", shell_output("#{bin}/plumber --version")
  end
end
