class Connor < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connor"
  url "https://github.com/helpermethod/connor/releases/download/v1.2.0/connor-1.2.0-osx-x86_64.zip"
  version "1.2.0"
  sha256 "a3c4f5701bee1f56a25cf11f70d6449ff34691ad499ea8b5baaba12328acb719"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connor"
  end

  test do
    output = shell_output("#{bin}/connor --version")
    assert_match "1.2.0", output
  end
end
