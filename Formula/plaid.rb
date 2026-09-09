class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20260909-fcd14fe6"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260909-fcd14fe6/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "9727b091851d8c14e9cf75609132371e763681e56a7925df91d6e68889940607"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20260909-fcd14fe6/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "25fdbb6b14548b9403d7b64cf31df8f6667928b42b53b31b5f409f30632fccba"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260909-fcd14fe6/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "138a15bd2aacfabd77d4a628a634a0bc3ca3b6ebcfc2b5574221e670dd3aef04"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20260909-fcd14fe6/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "e8e22f3777338d9dc955dfb0fd6d102e8d25d432b86c42aedab44886f0bdbf82"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid --version")
  end
end
