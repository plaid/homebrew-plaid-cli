class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20260403-4cfb7957"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260403-4cfb7957/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "e8a324269be1faf5c4e1b39f49faea0dbf24f0d3d3914279b9a65f325ed6dafb"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20260403-4cfb7957/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "1c7fa82dd2ad76385a8cb84dbf9ec6f817d226e2e1f083c9a93c820d90f52705"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260403-4cfb7957/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "43600d4010d7be3b01a495f53e5946d62db0b526a2d6b3a00ede668682fc3afc"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20260403-4cfb7957/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "7c7e2eeccaba75815e1eb237ccdd62f73de6b59b314bd542a5d574308dcc226b"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid version")
  end
end
