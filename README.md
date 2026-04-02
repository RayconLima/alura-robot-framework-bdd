# 🤖 Robot Framework: Automação de Testes no Padrão BDD

Este projeto faz parte do curso **“Robot Framework: automatizando testes no padrão BDD”** da Alura. Ele demonstra a automação de testes web utilizando **Robot Framework + SeleniumLibrary**, evoluindo de cenários simples para uma arquitetura mais escalável baseada em **BDD + Page Object Model (POM)**.

---

## 📌 Visão Geral

O projeto cobre:

- Testes de sucesso e validação de erros em formulários
- Uso de `Setup` e `Teardown`
- Organização em camadas com **POM**
- Reutilização de keywords e variáveis

---

## 🧱 Estrutura do Projeto

Este projeto foi desenvolvido seguindo o padrão BDD e evoluiu para implementar o Page Object Model (POM), visando maior escalabilidade e facilidade de manutenção. A estrutura atual reflete essa evolução:

- `main.robot`: O arquivo principal que orquestra a execução dos cenários de teste, conectando todos os recursos e configurações.
- `pages/`: Diretório que contém os arquivos de Page Objects, onde as palavras-chave específicas de cada página da aplicação são definidas. (Ex: `home_page.robot`, `form_page.robot`)
- `resources/`: Diretório para arquivos de recursos que contêm palavras-chave e variáveis reutilizáveis em diferentes partes do projeto. (Ex: `common_keywords.robot`, `variables.robot`)
- `suites/`: Diretório para os arquivos de suítes de teste, onde os cenários de teste são definidos. (Ex: `preenchimento_correto_suite.robot`, `preenchimento_incorreto_suite.robot`)
- `setup_teardown.robot`: Arquivo responsável por configurar o início e o final dos testes, garantindo que as configurações sejam compartilhadas entre os cenários.
- `.gitignore`: Configurações para ignorar arquivos temporários e relatórios de teste.
- `log.html`, `report.html`, `output.xml`: Arquivos gerados pelo Robot Framework ao executar os testes, contendo os resultados detalhados.


### 🔍 Descrição dos principais componentes

- **main.robot**  
  Arquivo principal que orquestra a execução dos testes.

- **pages/**  
  Implementação do **Page Object Model**, contendo keywords específicas de cada página.

- **resources/**  
  Keywords reutilizáveis e variáveis globais.

- **suites/**  
  Definição dos cenários de teste (BDD).

- **setup_teardown.robot**  
  Configuração de `Suite Setup`, `Suite Teardown`, `Test Setup` e `Test Teardown`.

- **Relatórios (`log.html`, `report.html`, `output.xml`)**  
  Gerados automaticamente após a execução dos testes.

---

## ⚙️ Requisitos

- Python **3.8+**
- Robot Framework
- SeleniumLibrary
- WebDriver:
  - Chrome → `chromedriver`
  - Firefox → `geckodriver`

---

## 🚀 Setup do Ambiente

### 1. Criar e ativar ambiente virtual

```bash
python -m venv .venv
source .venv/bin/activate  # Linux/macOS
# .venv\Scripts\activate   # Windows
```

### 2. Instalar dependências
pip install robotframework robotframework-seleniumlibrary

### 3. Configurar WebDriver
Certifique-se de que o WebDriver escolhido está instalado e disponível no PATH.

## ▶️ Execução dos Testes
Executar um teste específico
```bash
robot suites/preenchimento_correto_suite.robot
```

Executar todos os testes
```bash
robot .
```