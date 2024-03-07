# Generated with JReleaser 1.3.0 at 2024-03-07T15:44:35.818360004Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.8.2/quarkus-cli-3.8.2.zip"
  version "3.8.2"
  sha256 "b00493e34862d4524b73b24b03076e0a7004a95cfc57482906e90a0c951a9261"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.8.2", output
  end
end
