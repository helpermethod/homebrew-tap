class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.2.1"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.2.1/connect-offset-reset-0.2.1-osx-x86_64.zip"
  sha256 "158794d2b2b5d55d1243153876c8efbacc146154aa9705fef0494c38bdd58844"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.2.1", output
  end
end