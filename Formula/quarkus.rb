# Generated with JReleaser 1.3.0 at 2025-12-24T13:44:30.222918947Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.30.5/quarkus-cli-3.30.5.zip"
  version "3.30.5"
  sha256 "6175de14f7fd937e07dbd12b74dd1bc179f35211f4bb8f30cac8b9e954c912f7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.30.5", output
  end
end
