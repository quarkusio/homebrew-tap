# Generated with JReleaser 1.3.0 at 2024-08-09T14:24:10.965108703Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.13.2/quarkus-cli-3.13.2.zip"
  version "3.13.2"
  sha256 "dae3eb5d558c7d155d65c09ce508077e6caa2ffced614d56848fb274c9024b75"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.13.2", output
  end
end
