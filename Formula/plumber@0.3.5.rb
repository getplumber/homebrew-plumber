# typed: false
# frozen_string_literal: true

class PlumberAT035 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.5"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.5/plumber-darwin-arm64"
      sha256 "6071fc8f3d195884d39d01cded989cdd32ea2d506bb5f3d90d76e3128e7ee2b8"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.5/plumber-darwin-amd64"
      sha256 "5bbef969cce62f5ee4188111179604aae3dd95128d7bc64594e22f542c443f1f"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.5/plumber-linux-arm64"
      sha256 "a08868ff3685bce293a9659a6ff9ddb07ef27bca3aa2b04874fab08888b37dd6"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.5/plumber-linux-amd64"
      sha256 "c8b5befc6b8e4374583ac995b240f2ffe9f3be50eabe27c080762b5b13b4b3ae"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.5", shell_output("#{bin}/plumber --version")
  end
end
