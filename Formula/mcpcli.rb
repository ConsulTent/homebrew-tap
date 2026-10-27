class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.2.0/mcp-darwin-arm64"
      sha256 "649190547541e057227ec093c296337e0e23a93c473882885efad4e1ca03250b"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.2.0/mcp-darwin-amd64"
      sha256 "4c5f76e6caa32625d5137cfdf1ec7471149b1d6e190e9a562efe459827ad40cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.2.0/mcp-linux-arm64"
      sha256 "38cf61f29ac927ed3a7d735ae328a7b16b51fa59c6560d53b096e96a2a6ddaec"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.2.0/mcp-linux-amd64"
      sha256 "5506ccce3d0026ef17ac06fe9a2300410fde0ebceb5ade5fd14a6ca2b9899b66"
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
