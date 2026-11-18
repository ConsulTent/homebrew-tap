class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.0/mcp-darwin-arm64"
      sha256 "60abede9688d0ecf128dcff3219ee5eecd422dcac550712d5078b99bac921a42"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.0/mcp-darwin-amd64"
      sha256 "f004db6ac3dd0548cc39ea2765aa9a468cef1aca98e3d44749f97e9b36381b79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.0/mcp-linux-arm64"
      sha256 "39fbd7b5a8927193431b94eaada8b5f73d805419dd4b942f43a59f7ba206394b"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.5.0/mcp-linux-amd64"
      sha256 "979fed6f2eb6f46fafbb9708c609289728ac3384e76fe308a43215d8bf1013fd"
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
