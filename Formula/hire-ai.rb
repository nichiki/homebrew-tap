class HireAi < Formula
  include Language::Python::Virtualenv

  desc "CLI to orchestrate AI agents (Claude, Codex, Gemini, Grok)"
  homepage "https://github.com/nichiki/hire-ai"
  url "https://files.pythonhosted.org/packages/5b/81/d854758350a0d58ac216c375275d02ce40817ebdd1b792deb976c02a6ecd/hire_ai-0.1.8.tar.gz"
  sha256 "25b65e1f7eec5c0b29ae1a0942fccce0f93a070b03ff39ad9a43d1c07c89fd89"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hire", shell_output("#{bin}/hire --version")
  end
end
