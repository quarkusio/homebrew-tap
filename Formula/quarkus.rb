# Generated with JReleaser 1.3.0 at 2025-12-03T15:38:15.462492874Z
class Quarkus < Formula
  desc "CLI for Quarkus"
  homepage "https://quarkus.io"
  url "https://github.com/quarkusio/quarkus/releases/download/3.30.2/quarkus-cli-3.30.2.zip"
  version "3.30.2"
  sha256 "0f4f43b9c69af197481e9711cb4224b9ecdf51b3e8c82840c7669cfe320b9a45"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/quarkus" => "quarkus"
  end

  test do
    output = shell_output("#{bin}/quarkus --version")
    assert_match "3.30.2", output
  end
end
