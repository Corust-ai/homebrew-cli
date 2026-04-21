class Corust < Formula
  desc "Corust Agent CLI — AI coding assistant with TUI"
  homepage "https://github.com/Corust-ai/corust-agent-rs"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.5.0/cli-darwin-arm64.tar.gz"
      sha256 "33c45fc7e9df2334c0041d9207e46e08e466b3f63a02807523646f48f56ea966"
    else
      url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.5.0/cli-darwin-x64.tar.gz"
      sha256 "be349c5e38afd1fe9e22847a0f955164d60e46b54a78d6b5810dc253c5031b1e"
    end
  end

  on_linux do
    url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.5.0/cli-linux-x64.tar.gz"
    sha256 "0035c058f1eaecfaa85c900bf303116d36392a6e79fe614f361f8a5e0e41bacb"
  end

  def install
    bin.install "corust"
  end

  test do
    assert_match "corust", shell_output("#{bin}/corust --version")
  end
end
