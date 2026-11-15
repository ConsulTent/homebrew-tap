class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.4/mcp-darwin-arm64"
      sha256 "a08738a4426302ae09cd692576efd8f8297d57478420122a23f65b57eef6c8b5"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.4/mcp-darwin-amd64"
      sha256 "5f2b8250405d4c90b4c70e0dfa094eed302f9ca0a101d8c40c62c967d9a6f2e0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.4/mcp-linux-arm64"
      sha256 "91479f2c83609cc4ead11422cf4b541f70779516ee11901c47b1153c4074559e"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.4/mcp-linux-amd64"
      sha256 "78821cb42476bb6f7cb5ddf23bd4f301707f857784b8809678b911c137f29b54"
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
