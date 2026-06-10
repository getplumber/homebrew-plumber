# typed: false
# frozen_string_literal: true

class PlumberAT0354 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.54"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.54/plumber-darwin-arm64"
      sha256 "78afe2d060383f985c62dab63ebd37ab6ca8b54058529ef1403fef2b805b1988"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.54/plumber-darwin-amd64"
      sha256 "bf930de735214fc1394020c7e1c819149e8b278829825df60f2035b5f0c1172d"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.54/plumber-linux-arm64"
      sha256 "0c33ce138d15b69117fd2b18d770089b899da5ef453f767d1d3cbd701c09d4b0"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.54/plumber-linux-amd64"
      sha256 "24ce599d27fdcebdffe98e6a5f86305168ee509238c695eb9a7e6f39421f2d01"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.54", shell_output("#{bin}/plumber --version")
  end
end
