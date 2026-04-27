class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20260427-27e41ef1"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260427-27e41ef1/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "b5894d5c05b03c17f6862beb2520b9bc5c4d22fbfd42990eb36ab9cb59cf5ad2"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20260427-27e41ef1/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "d4c9d8afedb4d678dbcac12f81746cc772eb162b41829d4c29cff38a976ac979"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260427-27e41ef1/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "411cf00436195b4f7b24ecc302c231371568200185a29e4eb3ee2c9b3f7c6d41"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20260427-27e41ef1/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "d2d0f7c9fec04b30415d386618f622508708ad1cb97e7da1cc44974b37e752fc"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid --version")
  end
end
