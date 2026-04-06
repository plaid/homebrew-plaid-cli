class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20260406-6180aa8f"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260406-6180aa8f/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "3201709a81b52a9d1e73d3a7aa118b22dd5a185e016b5a5581bf5169885f03e2"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20260406-6180aa8f/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "d05dbda4a6b0d111e975cf22be8473ad93b8744dd1c7c554ead1ec8be95a8179"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260406-6180aa8f/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "a0bbebb74de77032bf098f09dde445ca3aa8427fc53f94083d1f8e233c7aa38d"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20260406-6180aa8f/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "dacb86289dc578053b5081a374bd6de39eb1c390234f12f3b665aea21ec82d69"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid version")
  end
end
