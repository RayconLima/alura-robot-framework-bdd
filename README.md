# Robot Framework: automatizando testes no padrão BDD

Este projeto é parte do curso **Robot Framework: automatizando testes no padrão BDD** da Alura e contém exemplos básicos de automação web usando SeleniumLibrary.

## Estrutura do projeto

- `primeiro_teste.robot` - teste principal mostrando abertura do navegador, preenchimento de formulário e validação de elemento.
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

```bash
robot primeiro_teste.robot
```

## Observações

- Use o formato de keyword do Robot Framework:
  - `Open Browser    https://example.com    chrome`
  - `Click Element    id:meu-id`

- Os relatórios gerados ficam em `log.html`, `report.html` e `output.xml`.
