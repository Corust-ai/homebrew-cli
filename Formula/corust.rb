class Corust < Formula
  desc "Corust Agent CLI — AI coding assistant with TUI"
  homepage "https://github.com/Corust-ai/corust-agent-rs"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.6.0/cli-darwin-arm64.tar.gz"
      sha256 "7942b1920bc16ffdfcdd9629321512f35e3aa8adf37ef3fe8225a295c24f47ab"
    else
      url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.6.0/cli-darwin-x64.tar.gz"
      sha256 "f6fa75ca469f1879b32993b8e4f29903b5c25c635964de3edb69c5f7a6f5aafd"
    end
  end

  on_linux do
    url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.6.0/cli-linux-x64.tar.gz"
    sha256 "fd6dd9a03dd49dc95dbb9bc74f7204e49a0ec4b00c87f9e6dd4d78cb851e2f9b"
  end

  def install
    bin.install "corust"
  end

  test do
    assert_match "corust", shell_output("#{bin}/corust --version")
  end
end
