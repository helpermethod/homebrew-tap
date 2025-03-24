# Generated with JReleaser 1.17.0 at 2025-03-24T13:17:49.04328Z

class P2e < Formula
  desc "Convert Spring configuration property names to environment variable names."
  homepage "https://github.com/helpermethod/p2e"
  url "https://github.com/helpermethod/p2e/releases/download/v1.0.10/p2e-1.0.10-osx-aarch_64.zip"
  version "1.0.10"
  sha256 "1e086b0f038adf5543be15b24206906b95e993c22075514bd0038e100cdd8d09"
  license "Apache-2"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/p2e" => "p2e"
  end

  test do
    output = shell_output("#{bin}/p2e --version")
    assert_match "1.0.10", output
  end
end
