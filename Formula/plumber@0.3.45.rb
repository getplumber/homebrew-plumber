# typed: false
# frozen_string_literal: true

class PlumberAT0345 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.45"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.45/plumber-darwin-arm64"
      sha256 "49789df485b53d6fee9a283f5a393ed85420ab1e562d3a5da16578759c49d023"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.45/plumber-darwin-amd64"
      sha256 "0c546f158049c80f1638499ae3fe7124e00fa66512f4456a0f21fb3d2f0c254a"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.45/plumber-linux-arm64"
      sha256 "314c9c23db8c9046afdd34aff07c67500580a0ddfc04a1574ea10750b42a5265"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.45/plumber-linux-amd64"
      sha256 "516de489c0b7c7fe8c00edff1d5ca19040efe12876616b7acf55baeb06057022"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.45", shell_output("#{bin}/plumber --version")
  end
end
