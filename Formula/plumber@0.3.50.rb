# typed: false
# frozen_string_literal: true

class PlumberAT0350 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.50"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.50/plumber-darwin-arm64"
      sha256 "d53d647396373c4006aa92febeee19e0a66f761905ec8e7ec418253d84221163"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.50/plumber-darwin-amd64"
      sha256 "932f586d57140583459f1cecf01fe0ed20da9ec31908ccaa8847d2aac7f1be00"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.50/plumber-linux-arm64"
      sha256 "6c7098e6fb733042b5764d7a4a89d1112699858969c168fcaea51e86ae15a908"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.50/plumber-linux-amd64"
      sha256 "4a2f2632e2614eb7ba68e15d859a7c629cc65cde5fb87a8c9cec392cf5554a13"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.50", shell_output("#{bin}/plumber --version")
  end
end
