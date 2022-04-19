# Generated with JReleaser 1.0.0 at 2022-04-19T18:34:08.752104+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.8.1.Final/quarkus-cli-2.8.1.Final.zip"
  version "2.8.1.Final"
  sha256 "c9742df315722d29fce7b3dfcc7a1a4541ace1cc70045336bb7159c9146c378b"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.8.1.Final", output
  end
end
