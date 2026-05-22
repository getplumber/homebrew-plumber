# typed: false
# frozen_string_literal: true

class PlumberAT0314 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.14"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.14/plumber-darwin-arm64"
      sha256 "80aff4a98d5f6cb8cb88706ff4159138e87079901dd0665fb679814c767f5921"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.14/plumber-darwin-amd64"
      sha256 "886b73e1d9bdc678b9cfae5af654482dfacd368033d0266dacec7150ced90585"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.14/plumber-linux-arm64"
      sha256 "fce71fc90178f719b19097072a688712cb20581fb99b047dc572c6a3bcd30b6d"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.14/plumber-linux-amd64"
      sha256 "eaa9069d240201d88370b850236a67f131a84767501d9895f882ed1b9687ed8b"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.14", shell_output("#{bin}/plumber --version")
  end
end
