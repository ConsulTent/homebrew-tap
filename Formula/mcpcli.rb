class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.3/mcp-darwin-arm64"
      sha256 "8816cc3a8cc86f0b18166a21d7b59bde1a7b24a328fe3789dfdb565e3ac1ddc6"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.3/mcp-darwin-amd64"
      sha256 "53c7d46f9547bcd5004cbebd61f1b7fa2c5d89e64c16fc316665f7f95f6bdae8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.3/mcp-linux-arm64"
      sha256 "67db50e0294fbebfdfa9af4303b86f9c9e973d11c745feb96af3695f2db5e3af"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.3/mcp-linux-amd64"
      sha256 "f4cab0978b5a1bb60aee48e08fb43a1a795062b1a180ee834a1cfd41b0f5c425"
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
