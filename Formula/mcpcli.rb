class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.2/mcp-darwin-arm64"
      sha256 "88172008a74cbdafa3ceaac7f178e85c1054aebcea687c56ae201b313cd37892"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.2/mcp-darwin-amd64"
      sha256 "9461635e6cf67e0b4b36521a8f5f6f294ece832b5b4ea07566d8398a7491b7ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.2/mcp-linux-arm64"
      sha256 "964ee76646d1771fcb8724fd91a2359d03053721ce96799e6daf1ca64570b74f"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.4.2/mcp-linux-amd64"
      sha256 "479f7b3648f5a214d4298dfa156028d3c44b11c7a9aec8482c8b48185461108f"
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
