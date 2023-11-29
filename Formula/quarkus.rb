# Generated with JReleaser 1.3.0 at 2023-11-29T11:32:43.621243+01:00
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.6.0/quarkus-cli-3.6.0.zip"
  version "3.6.0"
  sha256 "af5e4da6543d35124d599bbc0560dbac35e9953056f365e3ba44fa2243187660"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.6.0", output
  end
end
