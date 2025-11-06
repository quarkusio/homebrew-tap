# Generated with JReleaser 1.3.0 at 2025-11-06T14:05:53.104517703Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.29.1/quarkus-cli-3.29.1.zip"
  version "3.29.1"
  sha256 "ccd28dcd1a8ce05a16db4b4874b18d026b40bd631b62af6517568503fca702b5"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.29.1", output
  end
end
