# typed: false
# frozen_string_literal: true

class PlumberAT0347 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.47"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.47/plumber-darwin-arm64"
      sha256 "15a902c8b01b02f08c01e8cdca07e2f29797b5504f92aefc26b9ef853a519d1a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.47/plumber-darwin-amd64"
      sha256 "0e45f417800b9857266f0524a66518682a8b4c7f7f023b7a9306f9fa91b19347"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.47/plumber-linux-arm64"
      sha256 "2ef107c5c56c135144257509c09bd4aedd2d75b6ada937abc83a8175e33cfa21"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.47/plumber-linux-amd64"
      sha256 "cac2286a6add3eb7561c609b7f949b56873fd6e4253f8069d0ec8ef27a6d2905"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.47", shell_output("#{bin}/plumber --version")
  end
end
