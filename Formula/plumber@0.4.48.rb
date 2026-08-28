# typed: false
# frozen_string_literal: true

class PlumberAT0448 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.48"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.48/plumber-darwin-arm64"
      sha256 "a54bea16b72ebcd67ef8546e9c146c2cfda389caf32755cbd11a9aa3e3fbbeac"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.48/plumber-darwin-amd64"
      sha256 "d8b6c12c1a41fab19960f236cfce9c14a7f299f34b6d0771154f3bc4ec58b42d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.48/plumber-linux-arm64"
      sha256 "1eb85f6b87b839fcac44a7e37815ab985910d85c2b107b8081541a717a6250b3"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.48/plumber-linux-amd64"
      sha256 "7a83c2df04bc7d6143dda7b2a8678e473a3f618a88869106a5e239b507b2a3c9"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.48", shell_output("#{bin}/plumber --version")
  end
end
