# Generated with JReleaser 1.3.0 at 2025-04-16T15:03:23.861827213Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.21.3/quarkus-cli-3.21.3.zip"
  version "3.21.3"
  sha256 "86f06cd38e1af4dcc68d75c25b56bc9954936108fee0e3ca882a715962c9835d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.21.3", output
  end
end
