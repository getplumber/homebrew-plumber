# typed: false
# frozen_string_literal: true

class PlumberAT0421 < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.4.21"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.21/plumber-darwin-arm64"
      sha256 "82ac7784c0eaa57b8ac690bf8e59762ae0fa9686a5527e541f1dd21634bedd9b"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.21/plumber-darwin-amd64"
      sha256 "962f2d9dfa68ade81298ca8f79a4634934da51252f178a7a00e8b138549f2337"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.21/plumber-linux-arm64"
      sha256 "367434b06e5281e4800c4187db5031aefb6a178c6d648edb328d93066c6a75f2"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.4.21/plumber-linux-amd64"
      sha256 "d83229e8ed9d223aacf47dec2c4bd07865d862e5b3651fa6dad82406f2dc766a"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.4.21", shell_output("#{bin}/plumber --version")
  end
end
