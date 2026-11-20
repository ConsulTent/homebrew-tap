class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.1/mcp-darwin-arm64"
      sha256 "7c7b9d38ff5f922f06314edf460cf75df67ca863fa84b787b4ccaaaa1b6b4a4d"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.1/mcp-darwin-amd64"
      sha256 "6d7ae3037cddb3b1f4c0d72d5244101b108fdf6593e91b7ab30fae23af4c5db5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.1/mcp-linux-arm64"
      sha256 "20ac5b5dec45c0b0c144a2fad6b713fd7b5b23a40c325cb7308de5479bba3205"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.1/mcp-linux-amd64"
      sha256 "d4ac681e88db3ad40e2af2a30b80bf21bd5d92108900088fd00c34ef1dd8b2ae"
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
