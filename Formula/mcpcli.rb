class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.3/mcp-darwin-arm64"
      sha256 "eae4030d1793bfad46ea44722a99bd85df12f696d3d169209c1a19fe6e6306ef"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.3/mcp-darwin-amd64"
      sha256 "ff94a92d9e4619798b50357f7a78f93b7ccc80d15aef8d82eb6e58eb98f21c3c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.3/mcp-linux-arm64"
      sha256 "477c1549b2016a2c7f4bf12ab630996f387accccf6547c296d7c1c4f38230c15"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.3/mcp-linux-amd64"
      sha256 "fa363288e79f499f3bd53a32a38bb14b54d4ed1c9540787a8c85057f5f640e99"
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
