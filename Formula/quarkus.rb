# Generated with JReleaser 1.3.0 at 2022-11-16T17:43:30.506315+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.14.1.Final/quarkus-cli-2.14.1.Final.zip"
  version "2.14.1.Final"
  sha256 "e64a2c28c2e82d49d61b3b8450675b91f4a28fd6b245bb03df8e52c64719b3bb"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.14.1.Final", output
  end
end
