# Generated with JReleaser 1.3.0 at 2022-12-20T12:07:03.076671+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.13.6.Final/quarkus-cli-2.13.6.Final.zip"
  version "2.13.6.Final"
  sha256 "37e1469bc608f97f1690d256a6d4f7a60e080f26cab77b458c861f4408ef76e6"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.13.6.Final", output
  end
end
