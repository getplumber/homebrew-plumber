# typed: false
# frozen_string_literal: true

class PlumberAT0169 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.69"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.69/plumber-darwin-arm64"
      sha256 "7d8e39cafd19dd5295c82fa727113f09f855214ccd544f9b04d14fc4d4bb8d19"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.69/plumber-darwin-amd64"
      sha256 "69175ec9d990699bceae13bd9f1ee658668e82b30522000f7ed2dd9a609b6ec0"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.69/plumber-linux-arm64"
      sha256 "22a1ebd3c308d602a1e227b6c97d9c1ff11588b3e47e4df762b037026b8f8c65"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.69/plumber-linux-amd64"
      sha256 "73703d8927e79241f2ef2924d578c9ab32126e159e23db2b62b66b22a8ae4237"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.69", shell_output("#{bin}/plumber --version")
  end
end
