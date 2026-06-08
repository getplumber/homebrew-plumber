# typed: false
# frozen_string_literal: true

class PlumberAT0351 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.51"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.51/plumber-darwin-arm64"
      sha256 "ef0d90bbda6f585f3ddfcb4cd682492acc1c0c80617c2d7f30042c9fcb121664"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.51/plumber-darwin-amd64"
      sha256 "2d7f2d79c27d3053018b3ebaeef406d295d8e179a47bcfc9231cc970c95feb76"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.51/plumber-linux-arm64"
      sha256 "53c8f867028932d6993609766b70188a5f3bd83b2826615d72bdae5bc07931bf"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.51/plumber-linux-amd64"
      sha256 "15cae26333c79356a2eb98ae08ee4c672b49a468e331e542c42e80d6c8dc49d9"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.51", shell_output("#{bin}/plumber --version")
  end
end
