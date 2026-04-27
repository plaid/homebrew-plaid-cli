class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20260427-f338b4a4"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260427-f338b4a4/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "4fbe3d3f7decca71b6ea612ebe57b822a1d41e39912ea5a29732f89a87b382a4"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20260427-f338b4a4/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "3cc0a915a616522826e4a208c638a2ba312e0873af160e969e4600e320a988a4"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260427-f338b4a4/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "8c458c25587ee99008b8be366c5159dab5c937eea3a9909fb31f7828f9d546e0"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20260427-f338b4a4/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "2d170eab6fab49e96b603dda436051a1c45ebcc1a4774bc28ee452f271b18052"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid --version")
  end
end
