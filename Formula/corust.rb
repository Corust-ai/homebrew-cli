class Corust < Formula
  desc "Corust Agent CLI — AI coding assistant with TUI"
  homepage "https://github.com/Corust-ai/corust-agent-rs"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.5.1/cli-darwin-arm64.tar.gz"
      sha256 "69de727054b71e3277c1bc4a7e7f6333263cd9164d8024c67d6fbb2d99bfa358"
    else
      url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.5.1/cli-darwin-x64.tar.gz"
      sha256 "518cb8d16238774078dcdbe292ca0119e639b3f69417a697161720a1cd144885"
    end
  end

  on_linux do
    url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.5.1/cli-linux-x64.tar.gz"
    sha256 "da0cf6263431372f2496228f966d20ffa1ae2f7840a2bd44b5fcc240673b39db"
  end

  def install
    bin.install "corust"
  end

  test do
    assert_match "corust", shell_output("#{bin}/corust --version")
  end
end
