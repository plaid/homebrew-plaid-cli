class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20261017-c0f64a03"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20261017-c0f64a03/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "275e2aa2e1c146dd96352662729f1dcab36452493eb38a057624ae1e28ab2255"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20261017-c0f64a03/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "62d4008c7e8426c3ccd976e6c9f3abf61f48c114f7c77166ee37f5c30cb229b5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20261017-c0f64a03/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "af6440d71010bfcae09c4abb2192ef38867be528835241e7bdabc534cb4c468f"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20261017-c0f64a03/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "f7ec4eafac7012aa829242a4fd4b0cdf0b179b91a9a299c0c3cc35054e7b3633"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid --version")
  end
end
