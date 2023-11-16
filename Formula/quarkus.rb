# Generated with JReleaser 1.3.0 at 2023-11-16T16:18:22.772215+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.5.2/quarkus-cli-3.5.2.zip"
  version "3.5.2"
  sha256 "efbad4662be0b7077a86545ce8a2ef658453ec94b917913417527257c8db3633"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.5.2", output
  end
end
