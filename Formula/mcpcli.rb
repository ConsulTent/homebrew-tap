class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.1/mcp-darwin-arm64"
      sha256 "2e8bc2c26ca2939863af792049f42bb415a851c337f8f23df71298b33ef5587a"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.1/mcp-darwin-amd64"
      sha256 "2a4beec021ad904925fdcd15c50b455587ac1283465d00d1a3265971cd27adad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.1/mcp-linux-arm64"
      sha256 "b71397dc0636b959257066e9018e3e2f75d18242ee38c782b7023a31c9ea71b1"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.1/mcp-linux-amd64"
      sha256 "416c961d3a37546f85fc3562b7a6851ae39cb3d4b73dedcbcc928e73fb3ac91c"
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
