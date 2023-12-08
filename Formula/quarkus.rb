# Generated with JReleaser 1.3.0 at 2023-12-08T15:49:54.524608+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.6.1/quarkus-cli-3.6.1.zip"
  version "3.6.1"
  sha256 "d9294f8e1ba83cf396706d48438b1783b9229ef90287e3e8ce91ce3137514fce"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.6.1", output
  end
end
