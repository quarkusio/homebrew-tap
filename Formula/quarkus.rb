# Generated with JReleaser 1.3.0 at 2024-02-14T16:11:29.403980769Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.7.3/quarkus-cli-3.7.3.zip"
  version "3.7.3"
  sha256 "7f2fd0b74c966ddb1cd7e70846b0dabf9ee9a00118a5f2df79e4dcce392464c8"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.7.3", output
  end
end
