class Connor < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connor"
  version "0.7.0"
  url "https://github.com/helpermethod/connor/releases/download/v0.7.0/connor-0.7.0-osx-x86_64.zip"
  sha256 "d192132b0c1d4a3efece5d957819c380d54bbe25093e881a11fefc79e004c403"
  license "Apache-2"

  bottle :unneeded


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connor"
  end

  test do
    output = shell_output("#{bin}/connor --version")
    assert_match "0.7.0", output
  end
end