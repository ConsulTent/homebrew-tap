class Mcpcli < Formula
  desc "MCP (Model Context Protocol) client and inspector CLI"
  homepage "https://github.com/ConsulTent/mcpcli"
  url "https://github.com/ConsulTent/mcpcli/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "7612f0dfbb7e26a66b837d55228ad311b16b177e4aa09d46b8007a9f9974bf51"
  license "AGPL-3.0-or-later"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"mcp"), "./cmd/mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp --version")
  end
end
