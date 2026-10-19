# typed: false
# frozen_string_literal: true

class Plumber < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.6"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-arm64"
      sha256 "b7ef54d833823e64233244afcaf840f996811b366addf6bc44e72a398292cd1d"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-amd64"
      sha256 "f87b9323ea37d73b5f8fc9b4254ebf9a9dd20b52a8d678556e171356a08d509c"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-arm64"
      sha256 "692acded040701f36c529258ad6850fff9bc3e8d1cd500f75e06ce323b89896f"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-amd64"
      sha256 "ce86feb6d966c888e7dbac91fc95b8f6a1e5548b5279eb740e5ef09c955973f1"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  test do
    assert_match "plumber version #{version}", shell_output("#{bin}/plumber --version")
  end
end
