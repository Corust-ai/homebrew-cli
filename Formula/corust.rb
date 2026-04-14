class Corust < Formula
  desc "Corust Agent CLI — AI coding assistant with TUI"
  homepage "https://github.com/Corust-ai/corust-agent-rs"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Corust-ai/corust-agent-release/releases/download/v0.4.1/cli-darwin-arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/Corust-ai/corust-agent-release/releases/download/v0.4.1/cli-darwin-x64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    url "https://github.com/Corust-ai/corust-agent-release/releases/download/v0.4.1/cli-linux-x64.tar.gz"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    bin.install "corust"
  end

  test do
    assert_match "corust", shell_output("#{bin}/corust --version")
  end
end
