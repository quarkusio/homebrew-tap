# Generated with JReleaser 1.3.0 at 2026-07-23T08:54:34.160074091Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.37.4/quarkus-cli-3.37.4.zip"
  version "3.37.4"
  sha256 "2d86667357ef19da5c33541b74056f7d1ab3360419347897695e630db74baca6"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.37.4", output
  end
end
