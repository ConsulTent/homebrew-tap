class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/archive/refs/tags/v1.6.1.tar.gz"
      sha256 "f33da5d6772a19df8bda30e7c15823398fede11720af560dad50737166a32f9d"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.6.0/mcp-darwin-amd64"
      sha256 "5ea3e639dbfad0a899d584220e7e99a0e162146109b4a3ce47dca9cb127633de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.6.0/mcp-linux-arm64"
      sha256 "a8fe9e8b3a2d523adf7014d51f894856be714d4d58ffcf7c11e6da36f3956193"
    end
    on_intel do
      url "https://github.com/ConsulTent/mcpcli/releases/download/v1.6.0/mcp-linux-amd64"
      sha256 "379ffe6bbb74174d2d07e21f66e0eb7ca032e6771c036e6ae1e4dd24188fb877"
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
