# typed: false
# frozen_string_literal: true

class PlumberAT0356 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.56"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.56/plumber-darwin-arm64"
      sha256 "bf193e9fd3dd9fe4e219875657432970f00353d4c4b12d5260fdb7a70f741772"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.56/plumber-darwin-amd64"
      sha256 "4f115ca5c3cfaccffe0cb6b021b2b2e92b0587c0d173a2b9a6768d7362ff2188"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.56/plumber-linux-arm64"
      sha256 "9f135878320358f4b61a16d96d224cee384ae6dfc99d1682d6da6ee283927777"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.56/plumber-linux-amd64"
      sha256 "efd66eda402d9fc8c28e0df1df79dfe26b43c8c8ae545a5f524e0d60f1e17fe9"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.56", shell_output("#{bin}/plumber --version")
  end
end
