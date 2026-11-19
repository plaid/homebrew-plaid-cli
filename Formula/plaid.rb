class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20261118-b9905e97"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20261118-b9905e97/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "46c71800f20a14b8da46a29a48dd738a0a1d1e49ffe8e79a086fe4b791134f15"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20261118-b9905e97/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "9e00a05960bc28aba1fded8a967b0e18a2b36f76497aa98e5036f3342591495f"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20261118-b9905e97/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "5c0df67c802ad1930b12c6b759bb03f1bc1ab084e02de19e481d0aac059ab7b2"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20261118-b9905e97/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "78a08118f6fa96b06a764ae0aa8acd41a109c4177c83d4b6ef4182e8107443c5"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid --version")
  end
end
