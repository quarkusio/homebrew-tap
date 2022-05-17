# Generated with JReleaser 1.0.0 at 2022-05-17T16:53:28.483329+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.9.1.Final/quarkus-cli-2.9.1.Final.zip"
  version "2.9.1.Final"
  sha256 "093774e3a3001ecd8bd966a1c058400460beba154ee0ce86f63c42056b930a88"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.9.1.Final", output
  end
end
