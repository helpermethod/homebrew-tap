# Generated with JReleaser 1.2.0 at 2022-10-26T09:15:12.919251778Z
class Connor < Formula
  desc "A commandline tool for resetting Kafka Connect source connector offsets."
  homepage "https://github.com/helpermethod/connor"
  url "https://github.com/helpermethod/connor/releases/download/v1.4.1/connor-1.4.1-osx-x86_64.zip"
  version "1.4.1"
  sha256 "a8ba17e7f19a00771e01839ea1cafb21a29e6d13ad2ffe0901bff8fa146b9fd5"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/connor" => "connor"
  end

  test do
    output = shell_output("#{bin}/connor --version")
    assert_match "1.4.1", output
  end
end
