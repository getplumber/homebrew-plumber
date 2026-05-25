# typed: false
# frozen_string_literal: true

class PlumberAT0325 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.25"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.25/plumber-darwin-arm64"
      sha256 "80ba01b14fa513a45c7021d1c5dad32c4bf4a99e2058f329d4e784dfd4ece18c"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.25/plumber-darwin-amd64"
      sha256 "07d49aa3b7a4f51ee376fda582325dfa9523b7441ef4dd5d00237b58f53b711b"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.25/plumber-linux-arm64"
      sha256 "e0f7c720d5d412b8396ec4b5c3dafe67bee90978fbfef7a94f5494833a40e5ec"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.25/plumber-linux-amd64"
      sha256 "4ba21f1c558d7966d2db3e94610a06fbe62910a4957c8a6a176a99a3115c8c46"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.25", shell_output("#{bin}/plumber --version")
  end
end
