# Generated with JReleaser 1.3.0 at 2023-08-11T20:57:07.583115+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.2.4.Final/quarkus-cli-3.2.4.Final.zip"
  version "3.2.4.Final"
  sha256 "08bd77b31c56a21dc5163983d16bfe7fc2f4a9481e388365de6c0b353d5bb033"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.2.4.Final", output
  end
end
