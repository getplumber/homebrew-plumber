# typed: false
# frozen_string_literal: true

class PlumberAT0322 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.22"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.22/plumber-darwin-arm64"
      sha256 "301461b88385441fbb71594126ba04e4255be7169a5e712df0ea212da0b31321"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.22/plumber-darwin-amd64"
      sha256 "76f853ca17647f4627707cb286e63d37bb82842907c1c54993b538df101449c7"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.22/plumber-linux-arm64"
      sha256 "ba5a4fab0f16e962082e50749f694eca4209cfb6b0ab11b8ec3aeead40b6acd4"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.22/plumber-linux-amd64"
      sha256 "056ca3db54e5c49410ba21b886a279a1bca63f1502cd3c416cfdd212df7e9bda"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.22", shell_output("#{bin}/plumber --version")
  end
end
