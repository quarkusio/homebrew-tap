# Generated with JReleaser 1.3.0 at 2024-11-20T16:00:57.089835663Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.16.4/quarkus-cli-3.16.4.zip"
  version "3.16.4"
  sha256 "0e5ddcaacb2a49e9f2c47b6279be862264aa1e039be74950f250fe5e249cdd1c"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.16.4", output
  end
end
