class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.2/mcp-darwin-arm64"
      sha256 "4c81781bc29962a55e1cbfa5f5ff5c13a23bb90f79c8178b8dca7b56ea10b622"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.2/mcp-darwin-amd64"
      sha256 "c40ede7df94dbb47bba616e35b1ea63c5a20fb4e3e46f56c390354df4ed59b92"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.2/mcp-linux-arm64"
      sha256 "304a3574d87bb38b3347de4fb3c0a5bc78f9e9361755aa8f0568ef767ac1238d"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.2/mcp-linux-amd64"
      sha256 "6629470b149dbc97cac159f4a6f8622c62648bfa36b530d347a7ebbc50537a55"
    end
  end

  def install
    binary = Dir.children(".").grep(/\Amcp-/).first
    bin.install binary => "mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp --version")
  end
end
