class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.2.0"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.2.0/connect-offset-reset-0.2.0-osx-x86_64.zip"
  sha256 "3c968ecca8d5cbfe853592c098ba836630607040f3ff1cb5f5f88f8be61eb05d"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.2.0", output
  end
end