class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20260428-b86fe771"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260428-b86fe771/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "4d0b6c3d617ce3ed87d891b00de17b1acd866a9c68a95b6cb900a359942fe422"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20260428-b86fe771/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "4d130ef75382aa620414cd5a6a85c23ebd49c5701db742103803258cd905afb1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260428-b86fe771/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "5217ffadb5f875cc59f15270a66577c197eefbe47ee58a80432a752f6d918868"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20260428-b86fe771/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "700beccbdadd6d35043827beb730a44a75239635f07d7b856e9c6c74920a34da"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid --version")
  end
end
