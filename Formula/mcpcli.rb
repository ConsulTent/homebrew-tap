class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.6.1/mcp-darwin-arm64"
      sha256 "bce21ec59d0b50e465939b2db0c32111cf4efc22e83d603df8e4e207e29bb7fc"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.6.1/mcp-darwin-amd64"
      sha256 "9fbab3e7f125422a6a2cfa5bb193406801a16e78d4ab2e5ff6249c1902eff99d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.6.1/mcp-linux-arm64"
      sha256 "5a14a293506579eb1e839144223e8be05550c5d520891315c2f14d534f00c793"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.6.1/mcp-linux-amd64"
      sha256 "6219f9eb7d208a359f1b85f06006bab24d82d184f14bbe9d2bdb8664e4695cc6"
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
