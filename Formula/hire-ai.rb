class HireAi < Formula
  include Language::Python::Virtualenv

  desc "CLI to orchestrate AI agents (Claude, Codex, Gemini)"
  homepage "https://github.com/nichiki/hire-ai"
  url "https://files.pythonhosted.org/packages/56/21/f07a263d46057a752081138fe9db87a89349fdd9c5d9614577c6b0ad51dd/hire_ai-0.1.3.tar.gz"
  sha256 "457133b0c6fa8234fe08f98007715f6fa1eb37634c5d496218a3f6f70f848162"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hire", shell_output("#{bin}/hire --version")
  end
end
