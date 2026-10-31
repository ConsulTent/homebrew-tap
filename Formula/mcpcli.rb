class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.2/mcp-darwin-arm64"
      sha256 "dab8e46a13f3386fb08097fb1d52d1cc66bec14716253e9bee9da79ed0b69688"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.2/mcp-darwin-amd64"
      sha256 "d7c179be5abec8da83610711b347129c62384d9af2ac030670b561a3f516399f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.2/mcp-linux-arm64"
      sha256 "a2f6752ad3ef89a36548edc56512e58e3b5ba7a37411647d32fa85e120c0dc6d"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.3.2/mcp-linux-amd64"
      sha256 "5e4ccf91c9f07547e7e386556fcd45a5f3807ba970e1a84e10b7d3f1afdf503d"
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
