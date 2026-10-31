class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.1/mcp-darwin-arm64"
      sha256 "bb815edced2c0c8e358702f265b10ae08bf86e6ccd8b3d0fbab2cfed5dd1c5e0"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.1/mcp-darwin-amd64"
      sha256 "69add33ec6212f3e6cb2db0b389f89f0a397eae4f2b9cd1beb74552cfa580f14"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.1/mcp-linux-arm64"
      sha256 "1944ea241a452b842b1067e5fcb0d28e8a8aa5a64e8163507aba53dac339f26a"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.1/mcp-linux-amd64"
      sha256 "fa672e88095b01ff44368ec9b5bdcfef5f747abe6ea2cca565fd578d19af5136"
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
