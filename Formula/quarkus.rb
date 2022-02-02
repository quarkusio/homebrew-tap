# Generated with JReleaser 0.10.0 at 2022-02-02T14:56:03.738695+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.7.0.Final/quarkus-cli-2.7.0.Final.zip"
  version "2.7.0.Final"
  sha256 "71522c9711de4255bf4c5b3ceb1e6d538c488783781b986490d30996fffe5692"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.7.0.Final", output
  end
end
