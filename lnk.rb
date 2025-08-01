# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lnk < Formula
  desc "Git-native dotfiles management that doesn't suck"
  homepage "https://github.com/yarlson/lnk"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/yarlson/lnk/releases/download/v0.5.1/lnk_Darwin_x86_64.tar.gz"
      sha256 "9d9f225d121b73977613ceb259439106e181ee3838f723a3f20a2ab5e5815a19"

      def install
        bin.install "lnk"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/yarlson/lnk/releases/download/v0.5.1/lnk_Darwin_arm64.tar.gz"
      sha256 "8d5327cd05d9b0142a63e1bafcc416cc5fe7cd87b6938761891da5835fb36a05"

      def install
        bin.install "lnk"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/yarlson/lnk/releases/download/v0.5.1/lnk_Linux_x86_64.tar.gz"
      sha256 "54244e9dba0568f7a0eeb5c5346126c08d015b934cdf08a296ef8dfb6e633bf0"
      def install
        bin.install "lnk"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/yarlson/lnk/releases/download/v0.5.1/lnk_Linux_arm64.tar.gz"
      sha256 "ab046afceeb787dd7005e3774be73223d9a8fc19fd7367ca451dfa689bfe8602"
      def install
        bin.install "lnk"
      end
    end
  end

  test do
    system "#{bin}/lnk --version"
  end
end
