# typed: false
# frozen_string_literal: true

class PlumberAT0375 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.75"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.75/plumber-darwin-arm64"
      sha256 "c899745874b79963683574c81a37d857ff7ad1ec22cf0b562678d3f3c3a866b9"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.75/plumber-darwin-amd64"
      sha256 "4116421f5e272142a2e6865c21a60dc768b473149d5242f59e5dfef51a864025"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.75/plumber-linux-arm64"
      sha256 "5670b641427c83938060605cad2271f66d7502901232f3bf4607e3026ab9c934"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.75/plumber-linux-amd64"
      sha256 "152196ebe9f6950d5133e80c406bea0f5a428c3883d598abb65fd6dea5b93ac5"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.75", shell_output("#{bin}/plumber --version")
  end
end
