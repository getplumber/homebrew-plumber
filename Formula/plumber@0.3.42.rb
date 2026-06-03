# typed: false
# frozen_string_literal: true

class PlumberAT0342 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.42"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.42/plumber-darwin-arm64"
      sha256 "d14917443fbf0191120d443db0530197f08e771b860bee527953a72630632306"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.42/plumber-darwin-amd64"
      sha256 "edc1ff4c10fa67cc8dce8833cc3594ae2999bd3655ad56f35eece0bf4a2c89f2"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.42/plumber-linux-arm64"
      sha256 "7cdf13548e9781517d79a4f6de9fde18d3021b576bc876a16654f56e0c360cfe"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.42/plumber-linux-amd64"
      sha256 "7c0afb7924a8e30c84b0e2cbe11f4061b8f2ca01f9072fb353353da5bd1f8185"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.42", shell_output("#{bin}/plumber --version")
  end
end
