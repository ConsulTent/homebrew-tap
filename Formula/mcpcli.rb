class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  url "https://github.com/ConsulTent/mcpcli/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "3f85f5ba9e5639dbf83017ae92f8fb01d102f21a4c84094650f2dcb0d4b423f7"
  license "AGPL-3.0-or-later"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"mcp"), "./cmd/mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp --version")
  end
end
