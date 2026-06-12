# typed: false
# frozen_string_literal: true

class PlumberAT0357 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.57"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.57/plumber-darwin-arm64"
      sha256 "86c1e7e23b636c156009290b9359a5e39ac7aa58f2ea7506095bab8b968d1fcd"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.57/plumber-darwin-amd64"
      sha256 "fd61030069df15fc34b8ab7a1d12ae9a4ee628a9b3775df7e618112b3f68399f"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.57/plumber-linux-arm64"
      sha256 "9217e04bf1c86ac2836c8b47167fe1a626336e25af0600197e80c8ad6445253d"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.57/plumber-linux-amd64"
      sha256 "b5458abf7c4d73ca891bfbec9233cc9b01053129a49853200331eef4c0960e51"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.57", shell_output("#{bin}/plumber --version")
  end
end
