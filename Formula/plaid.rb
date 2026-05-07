class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20260507-4d1b0ca0"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260507-4d1b0ca0/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "ffbbdcc72d834bea7d09dfc681eb6ac105cad399b412c91a7a442021a73995f0"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20260507-4d1b0ca0/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "29203bde7d09132daf46ea65ac65e60caf50e333e87b716b8a94d3ca9050ac32"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260507-4d1b0ca0/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "ac3b5c2bd39ef34dc61872aa0a3b86a0581526860f9c1a9bc5006fc3665178bf"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20260507-4d1b0ca0/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "6f8c13d16bdadb7e171920891eb148b1d7494ae76511ac20e37e79f2bf110fa5"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid --version")
  end
end
