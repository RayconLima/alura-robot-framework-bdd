# Robot Framework: automatizando testes no padrão BDD

Este projeto é parte do curso **Robot Framework: automatizando testes no padrão BDD** da Alura e contém exemplos básicos de automação web usando SeleniumLibrary.

## Estrutura do projeto

- `preenchimento_correto.robot` - valida o preenchimento correto do formulário e cenários de sucesso.
- `preenchimento_incorreto.robot` - valida as mensagens de erro e fluxos de preenchimento inválido.
- `setup_teardown.robot` - mostra uso de `Suite Setup`, `Suite Teardown`, `Test Setup` e `Test Teardown`.
- `.gitignore` - ignore de arquivos temporários e relatórios de teste.
- `log.html`, `report.html`, `output.xml` - arquivos gerados pelo Robot Framework ao executar testes.

## Requisitos

- Python 3.8+
- Robot Framework
- SeleniumLibrary
- Webdriver para o navegador usado (Chrome/Gecko)

## Setup

1. Criar e ativar ambiente virtual:
   ```bash
   python -m venv .venv
   source .venv/bin/activate
   ```

2. Instalar dependências:
   ```bash
   pip install robotframework robotframework-seleniumlibrary
   ```

3. Instalar webdriver:
   - Chrome: `chromedriver`
   - Firefox: `geckodriver`

4. Verificar se Chrome/Firefox estão no PATH.

## Executar testes

No diretório `curso_robot`:

- Executar um teste específico:
  ```bash
  robot preenchimento_correto.robot
  ```
- Executar todos os testes da pasta:
  ```bash
  robot .
  ```

## Observações

- Use o formato de keyword do Robot Framework:
  - `Open Browser    https://example.com    chrome`
  - `Click Element    id:meu-id`

- Os relatórios gerados ficam em `log.html`, `report.html` e `output.xml`.
