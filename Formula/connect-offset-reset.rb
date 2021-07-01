class ConnectOffsetReset < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connect-offset-reset"
  version "0.0.22"
  url "https://github.com/helpermethod/connect-offset-reset/releases/download/v0.0.22/connect-offset-reset-0.0.22-osx-x86_64.zip"
  sha256 "811fe9fe44d22a7eb5b4399487a30f75e600ca125d58004a57368e1ac79178eb"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connect-offset-reset"
  end

  test do
    output = shell_output("#{bin}/connect-offset-reset --version")
    assert_match "0.0.22", output
  end
end