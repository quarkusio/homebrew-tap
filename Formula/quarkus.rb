# Generated with JReleaser 1.0.0 at 2022-04-26T18:25:03.240355+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.8.2.Final/quarkus-cli-2.8.2.Final.zip"
  version "2.8.2.Final"
  sha256 "694af32cf98d586d2fc18cd047fafb5d860737901620ba4ef239e4c010c6b67d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.8.2.Final", output
  end
end
