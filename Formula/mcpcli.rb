class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.0/mcp-darwin-arm64"
      sha256 "5470a518893827bdaf6c4cc7fad52b784a1c0ce837174c2d08779026f3a30c29"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.0/mcp-darwin-amd64"
      sha256 "36e80ffa95d834867a92281c1d2d9d6fb8a8562952ef342bb38db522b351f2c7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.0/mcp-linux-arm64"
      sha256 "6b2dd5644560393282017b3357d692bddd2f6eb5c3afcaa420afd5f615d3e153"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.0/mcp-linux-amd64"
      sha256 "3b93776fa3d5b9e654c797276d34fc66e8f8cf9f4e056fc7e4828af7833817db"
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
