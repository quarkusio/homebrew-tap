# Generated with JReleaser 1.3.0 at 2023-10-25T14:34:54.423885+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.5.0/quarkus-cli-3.5.0.zip"
  version "3.5.0"
  sha256 "075bcd3b5efc63ceb704af7e6ce71332323559c3922af731d8530b67eff39356"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.5.0", output
  end
end
