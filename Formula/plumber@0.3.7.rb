# typed: false
# frozen_string_literal: true

class PlumberAT037 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.7"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.7/plumber-darwin-arm64"
      sha256 "a2f77fa48e0a040f5cd7dd5092168f557fe72b915dfc110707ac282ed6ee6da1"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.7/plumber-darwin-amd64"
      sha256 "cfa755e1459164bb80d71ede09a683b3feccefe5acd3b2627646fb7b30f5b13d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.7/plumber-linux-arm64"
      sha256 "8cf3294bf6aa8dbbd6e8fdcadde74c95be16148668d7a12ad3e2b48a1a8945d8"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.7/plumber-linux-amd64"
      sha256 "77cb25f47a49ba92ee4549e267ed7d384c30029aa86a158c68af73f81bb98b3d"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.7", shell_output("#{bin}/plumber --version")
  end
end
