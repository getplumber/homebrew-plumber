# typed: false
# frozen_string_literal: true

class PlumberAT0360 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.60"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.60/plumber-darwin-arm64"
      sha256 "8557a8c14c17cf553aa0ec720555fb4763db269402884f751b521c56bdecf269"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.60/plumber-darwin-amd64"
      sha256 "d54962f0b1048486ef518f5b9dc87f1945a24d808004778d41b029b25d650de9"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.60/plumber-linux-arm64"
      sha256 "6399c33ee70157575239c02ea1b5f117e73708af1e85cea014f0a84b1ea5aa32"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.60/plumber-linux-amd64"
      sha256 "09d48fe18cfad7e1be80b52cfc6ad0ec4bf3f89d7bd5e989d62d930ab3de4f61"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.60", shell_output("#{bin}/plumber --version")
  end
end
