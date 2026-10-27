# typed: false
# frozen_string_literal: true

class Plumber < Formula
  desc "CI/CD security scanner for GitLab and GitHub pipelines"
  homepage "https://getplumber.io"
  version "0.7.14"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-arm64"
      sha256 "807665b156ec0477d332dffa287bbca3380179468aa3ffc02812b8b76d84200f"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-darwin-amd64"
      sha256 "8fef06d15d605f957b5020f7430b99540208766672528e25b7c2115e6034095e"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-arm64"
      sha256 "3d933ec967d95a125567dd7f0bc39ea0268c90c32f25c19d77e5be0ca67c810e"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v#{version}/plumber-linux-amd64"
      sha256 "c47356c091b30e1a16674a466ae1ab3e819847239e59a5bc7ecb808b89e519ce"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  test do
    assert_match "plumber version #{version}", shell_output("#{bin}/plumber --version")
  end
end
