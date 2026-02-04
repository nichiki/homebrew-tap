class HireAi < Formula
  include Language::Python::Virtualenv

  desc "CLI to orchestrate AI agents (Claude, Codex, Gemini)"
  homepage "https://github.com/nichiki/hire-ai"
  url "https://files.pythonhosted.org/packages/cf/5d/b1eb956c167792b6d82af220947e3d57e9bdfe15b277e3037199e3458b88/hire_ai-0.1.1.tar.gz"
  sha256 "a130a9e5096fa65753ba9846f29c10b627fbfa14983f1d471a175be92e70ab0d"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "hire", shell_output("#{bin}/hire --version")
  end
end
