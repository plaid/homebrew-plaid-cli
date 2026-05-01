class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20260501-186dab03"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260501-186dab03/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "25b53aaa33e2203889b6d17ab5c2e8cf3c6e3cfd88aa7065cbcb3ba5be3bb3f2"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20260501-186dab03/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "062a4f910ec694065c66cdbfc8f32643122dbcefe22022f7b3d945f9d3a57dda"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260501-186dab03/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "3585f48554dc6a0b182ed160e53c8e48851a73d99548e30fda2f04f325c9d34e"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20260501-186dab03/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "e5dc14733cb9ed0599d6eee158a5b09497efb1a60962941581861364ad88e42c"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid --version")
  end
end
