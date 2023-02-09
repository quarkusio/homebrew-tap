# Generated with JReleaser 1.3.0 at 2023-02-09T13:34:12.159747+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/2.16.2.Final/quarkus-cli-2.16.2.Final.zip"
  version "2.16.2.Final"
  sha256 "d34f0e86cc00dcfe8c44855479b9a3da284cd0e6db28cb637d4d6fe8b626edec"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "2.16.2.Final", output
  end
end
