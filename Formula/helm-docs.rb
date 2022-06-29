# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class HelmDocs < Formula
  desc "Automatically generate markdown documentation for helm charts"
  homepage "https://github.com/norwoodj/helm-docs"
  version "1.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.11.0/helm-docs_1.11.0_Darwin_arm64.tar.gz"
      sha256 "3cbce433c8a6f8a812f77f5395458997bcabdbe4a97b753295e91cb0642693c7"

      def install
        bin.install "helm-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.11.0/helm-docs_1.11.0_Darwin_x86_64.tar.gz"
      sha256 "16fdc241ed5c4921a5cf0e87115a79a35774ada627255b139d632e2c63b32af1"

      def install
        bin.install "helm-docs"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.11.0/helm-docs_1.11.0_Linux_armv6.tar.gz"
      sha256 "cabd8864aaf3bdfbddce67c8e4e129dce866c0b65ca0176f5379cc0b7d7cc430"

      def install
        bin.install "helm-docs"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.11.0/helm-docs_1.11.0_Linux_x86_64.tar.gz"
      sha256 "9fc7bc15b55aea3025cd21f9d4e1384d1538beec5f7090cc0b7c45857cad3e57"

      def install
        bin.install "helm-docs"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/norwoodj/helm-docs/releases/download/v1.11.0/helm-docs_1.11.0_Linux_arm64.tar.gz"
      sha256 "1f8e4593f23067d53a37c44086763395b7abf8e1694939cabaa28b074ee057b7"

      def install
        bin.install "helm-docs"
      end
    end
  end

  test do
    system "#{bin}/helm-docs --version"
  end
end
