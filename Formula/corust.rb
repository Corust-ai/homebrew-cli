class Corust < Formula
  desc "Corust Agent CLI — AI coding assistant with TUI"
  homepage "https://github.com/Corust-ai/corust-agent-rs"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.4.2/cli-darwin-arm64.tar.gz"
      sha256 "0314d31e98ad7d5ac71cd8549ad6b9e9c2ea9ce818414e343bc298b10900c312"
    else
      url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.4.2/cli-darwin-x64.tar.gz"
      sha256 "38447f1a06ea27f15bbe25aaa73f91d2a5de836c223a6fe1e72c0a2e3f09d13d"
    end
  end

  on_linux do
    url "https://github.com/Corust-ai/homebrew-cli/releases/download/v0.4.2/cli-linux-x64.tar.gz"
    sha256 "9afd0babe86db3a2c1a726976c412ab2cff8f32fd81ee1ee4ee6848a464f1324"
  end

  def install
    bin.install "corust"
  end

  test do
    assert_match "corust", shell_output("#{bin}/corust --version")
  end
end
