class Plaid < Formula
  desc "CLI for the Plaid API"
  homepage "https://plaid.com/docs/resources/cli/"
  version "20260408-50886b35"
  license :cannot_represent

  if OS.mac? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260408-50886b35/plaid-cli_#{version}_darwin_arm64.tar.gz"
    sha256 "e5b005002dd46d0d21d544d70c115ff72bdcffc03c3fdd4ce13c33f14fb2a646"
  elsif OS.mac?
    url "https://releases.plaid.com/plaid-cli/releases/20260408-50886b35/plaid-cli_#{version}_darwin_amd64.tar.gz"
    sha256 "f81f69aa3ed492f54d7fcaa44c39f8ccc2930a774b2b0af529c41caf94148b94"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://releases.plaid.com/plaid-cli/releases/20260408-50886b35/plaid-cli_#{version}_linux_arm64.tar.gz"
    sha256 "36f911f6d5b813ce99ba0cec8dc53fda3fd790620d9183ef63baa24005a5ec87"
  else
    url "https://releases.plaid.com/plaid-cli/releases/20260408-50886b35/plaid-cli_#{version}_linux_amd64.tar.gz"
    sha256 "744cc5ac114b644ece256ae326cf22c4621b0b43c87e4c6004609a2bee7e0297"
  end

  def install
    bin.install "plaid"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/plaid version")
  end
end
