# Generated with JReleaser 1.3.0 at 2024-01-23T15:34:47.987767Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.6.7/quarkus-cli-3.6.7.zip"
  version "3.6.7"
  sha256 "fb703dc0e263f4246d939266c48a849ce9c7f44e5d7dbafd2a70662a386f9e46"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.6.7", output
  end
end
