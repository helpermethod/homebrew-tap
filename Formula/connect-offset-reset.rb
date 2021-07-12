class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.0.24"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.0.24/connect-offset-reset-0.0.24-osx-x86_64.zip"
  sha256 "89bfcb07934cf85d5f581149105a7185d86c3b5fa925743c71ad88343adc3bb6"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.0.24", output
  end
end