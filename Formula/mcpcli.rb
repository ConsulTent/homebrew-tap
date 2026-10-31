class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.0/mcp-darwin-arm64"
      sha256 "18397efb8fb5f5d2d79cd445c6a95ee953b030fcecf3602e9af1a8e12127e97b"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.0/mcp-darwin-amd64"
      sha256 "1d144279bd6fb694ff68f0373768026cf13937f9a0b6818450043435f46c424d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.0/mcp-linux-arm64"
      sha256 "e42e02356cb0841d94f26bd6ab05d90f47e7292b7271f74f61821c5ee0b71bc7"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.0/mcp-linux-amd64"
      sha256 "30c06a112c6aef6864e6c82f7e61b31848a87609fd463e8e27c24c01940aa8e2"
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
