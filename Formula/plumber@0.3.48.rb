# typed: false
# frozen_string_literal: true

class PlumberAT0348 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.48"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.48/plumber-darwin-arm64"
      sha256 "d0cae953241d08fbf24ba5b5b1926580fbc4f2ada8968512e47e1ecb227a7430"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.48/plumber-darwin-amd64"
      sha256 "490e47dc64f338b7fce73cace3264705ea80f6eae7336fa0081aecfdebfdba9d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.48/plumber-linux-arm64"
      sha256 "21a6331fecd052cb68d4fe08fff8cae2c3dddc6c7565279c5767e68256c87745"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.48/plumber-linux-amd64"
      sha256 "6adbfaead2ee180e43701edb2b7cd5de74a779fb0e10cc91aea15f147204ad80"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.48", shell_output("#{bin}/plumber --version")
  end
end
