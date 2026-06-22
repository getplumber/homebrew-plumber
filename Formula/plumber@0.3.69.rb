# typed: false
# frozen_string_literal: true

class PlumberAT0369 < Formula
  desc "CI/CD compliance scanner for GitLab pipelines"
  homepage "https://getplumber.io"
  version "0.3.69"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.69/plumber-darwin-arm64"
      sha256 "387fb7ff439a9ea3692017deca98232f2233b57e7a549027a485133af9ac146a"

      def install
        bin.install "plumber-darwin-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.69/plumber-darwin-amd64"
      sha256 "c647167976298ba688bc7b104981f1382f0fabe7546a97ec9b692ab654b80ef2"

      def install
        bin.install "plumber-darwin-amd64" => "plumber"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.69/plumber-linux-arm64"
      sha256 "eb6cc4167b361ca1161fed81d60e12d426aed52a85005f62d8ce996b8254cdbb"

      def install
        bin.install "plumber-linux-arm64" => "plumber"
      end
    end

    on_intel do
      url "https://github.com/getplumber/plumber/releases/download/v0.3.69/plumber-linux-amd64"
      sha256 "9090ce56e911e3a35d3b01e254bc4121f97c1ee94c90f375991140a05358e09c"

      def install
        bin.install "plumber-linux-amd64" => "plumber"
      end
    end
  end

  keg_only :versioned_formula

  test do
    assert_match "plumber version 0.3.69", shell_output("#{bin}/plumber --version")
  end
end
