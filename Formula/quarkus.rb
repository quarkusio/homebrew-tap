# Generated with JReleaser 1.3.0 at 2023-01-20T17:35:49.39625+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.0.0.Alpha3/quarkus-cli-3.0.0.Alpha3.zip"
  version "3.0.0.Alpha3"
  sha256 "09919b8fc447daa94f3a61948b36a34bc9e9a9a4da6f67974334cece016b38a4"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.0.0.Alpha3", output
  end
end
