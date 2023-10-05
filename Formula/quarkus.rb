# Generated with JReleaser 1.3.0 at 2023-10-05T09:22:24.277012+02:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.4.2/quarkus-cli-3.4.2.zip"
  version "3.4.2"
  sha256 "f7847cf3bb7fd0e73b98a39c427117f15d6d95b95575aca032100d439cad39c7"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.4.2", output
  end
end
