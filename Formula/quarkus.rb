# Generated with JReleaser 1.1.0 at 2022-09-21T00:54:08.406815+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.12.3.Final/quarkus-cli-2.12.3.Final.zip"
  version "2.12.3.Final"
  sha256 "9d8a514dff2abcb6b19aac34761d294a3f8185a832d6aa5ec32f5f8f0f7b69c2"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.12.3.Final", output
  end
end
