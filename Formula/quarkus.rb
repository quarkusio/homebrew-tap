# Generated with JReleaser 1.3.0 at 2022-12-06T18:16:07.805118+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.14.3.Final/quarkus-cli-2.14.3.Final.zip"
  version "2.14.3.Final"
  sha256 "c39d7194af860db2e04579c66e2f8e7e21c331cf2624eab9ab908c7ad5b11ca1"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.14.3.Final", output
  end
end
