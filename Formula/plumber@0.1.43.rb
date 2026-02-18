# typed: false
# frozen_string_literal: true

class PlumberAT0143 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.43"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.43/plumber-darwin-arm64"
      sha256 "952240649be57cf08576a7c102c62cc7f0841088338ac032907bf40860a0756c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.43/plumber-darwin-amd64"
      sha256 "f7c181044c18f351c11b4700852ac21c367904aa34adb35ac614109a8ed29dbe"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.43/plumber-linux-arm64"
      sha256 "4b231733519cb2ab4da738162cacd5ebf1143225fc4f8dcbc29e94a0e14c9940"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.43/plumber-linux-amd64"
      sha256 "4d30e0d65ed568c79ba3632e388584474fda7a07b600f7fb525a1696af45b3bf"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.43", shell_output("#{bin}/plumber --version")
  end
end
