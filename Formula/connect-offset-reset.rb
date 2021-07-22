class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.0.26"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.0.26/connect-offset-reset-0.0.26-osx-x86_64.zip"
  sha256 "86c19f6e85b97e73a06181530e2ba3731582847f47ab5614996e8b67c0f25446"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.0.26", output
  end
end