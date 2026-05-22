# typed: false
# frozen_string_literal: true

class PlumberAT0317 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.17"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.17/plumber-darwin-arm64"
      sha256 "12a855d9eb83f208db3d1b62ee351c8bd4a64bb564701e885128abc96251a351"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.17/plumber-darwin-amd64"
      sha256 "0c1118ca1740c2cbb353245b42987495cb9e8183277b73aee3e975869ceebd64"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.17/plumber-linux-arm64"
      sha256 "69404269ad34c219d70574f65b41df36ce31c21b4fe128724a05e5cb63d6f45d"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.17/plumber-linux-amd64"
      sha256 "cc00b4dcd129a7dffcce60d59679d9fe2b76411233ed04243f06cf67fc3404db"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.17", shell_output("#{bin}/plumber --version")
  end
end
