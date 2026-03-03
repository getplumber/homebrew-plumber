# typed: false
# frozen_string_literal: true

class PlumberAT0150 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.1.50"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.50/plumber-darwin-arm64"
      sha256 "67d72febe0fe3e70b625d9fd1f74c23d51b7f8a29847947cd095d2eb4dda98fc"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.50/plumber-darwin-amd64"
      sha256 "50b9c3c1a50030a27ad28eda2a8c6af843a91f18feeee0650c58177495236b68"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.50/plumber-linux-arm64"
      sha256 "5e702c5511459ea179cfbab1d3ca5b4f46696ac4d14961c348197e8eab0b8a7f"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.1.50/plumber-linux-amd64"
      sha256 "f84b1ad45659c20111a0e12d8edea4dabd877dc5526acf538fb19e01fdf70b4c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.1.50", shell_output("#{bin}/plumber --version")
  end
end
