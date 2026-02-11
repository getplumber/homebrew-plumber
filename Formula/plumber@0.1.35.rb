# typed: false
# frozen_string_literal: true

class PlumberAT0135 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.35"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.35/plumber-darwin-arm64"
      sha256 "a4219cdfde25304529c4a74ec6e2be41bbf1ecb3460f5a571f3353ea0e4ecfcb"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.35/plumber-darwin-amd64"
      sha256 "c4529d69ce5a342e29accdd0b5b73690c8f7aa2bc4bf6eb11b3b4bff93695626"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.35/plumber-linux-arm64"
      sha256 "a7e2ce5c43f42e0f384ba511ce0dc8b720005dda3a4b7b5692b019e2411729e4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.35/plumber-linux-amd64"
      sha256 "cb403303be35c8f1a1f406dc45f2aec31f1ec8df1f3e970bd8e1ffabb0aed084"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.35", shell_output("#{bin}/plumber --version")
  end
end
