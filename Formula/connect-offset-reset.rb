class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.0.25"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.0.25/connect-offset-reset-0.0.25-osx-x86_64.zip"
  sha256 "601ff310897089b69148d1c7347defbac33f756ee4294e35fc744d0cb8e0c6b1"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.0.25", output
  end
end