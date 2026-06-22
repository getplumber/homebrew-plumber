# typed: false
# frozen_string_literal: true

class PlumberAT0370 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.70"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.70/plumber-darwin-arm64"
      sha256 "803ef6521961b5d4ad9ab9d9c4f57bdcdaa21a79fcbd2d205e440cdd4885e35f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.70/plumber-darwin-amd64"
      sha256 "72fbd8dc93942c8ddaa765fcbb1d02a8eb41117e700615b1bb517a9fd0f3e445"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.70/plumber-linux-arm64"
      sha256 "51ae296a01705369a3d950ef98661b754e721ab83a90cb664c993cca833094f0"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.70/plumber-linux-amd64"
      sha256 "e50ba133f657970acc2b5d3834b3d1b330a6ca51caa8d80737a817904dcb5e0c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.70", shell_output("#{bin}/plumber --version")
  end
end
