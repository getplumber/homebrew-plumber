# typed: false
# frozen_string_literal: true

class PlumberAT0315 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.15"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.15/plumber-darwin-arm64"
      sha256 "b679e3e24f915e61f1a70ac61ee17b71128a0ce8603a2909b3ed52cde977378e"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.15/plumber-darwin-amd64"
      sha256 "f866574c2de4d9fde19bb6599032227a4ed0d871b5f33a96f3d9d1d3aaccee6e"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.15/plumber-linux-arm64"
      sha256 "066163b564d7f47dc79d08ec22b75c7ff98d3f11b662396b5f6fb053f43a66d5"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.15/plumber-linux-amd64"
      sha256 "98709cc8cc4c3e03e5f9e08240b8d50c66d19767a53715d8c3853fa038fca4b0"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.15", shell_output("#{bin}/plumber --version")
  end
end
