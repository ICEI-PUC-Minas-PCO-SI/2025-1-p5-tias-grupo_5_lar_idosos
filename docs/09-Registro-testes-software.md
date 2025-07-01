# Registro de Testes de Software

**Pré‑requisitos**  
- Projeto de interface  
- Plano de testes de software  

Relatório com as evidências dos testes de software realizados no sistema pela equipe, baseado em um plano de testes pré‑definido. Para cada caso de teste definido no Plano de Testes de Software, registre as evidências (vídeos screencast) que comprovem se o critério de êxito foi alcançado.

---

## Casos de Teste

| Caso de Teste                         | Requisito Associado                   | Objetivo do Teste                                                                 | Registro de Evidência              |
|---------------------------------------|---------------------------------------|-----------------------------------------------------------------------------------|------------------------------------|
| **CT‑001 – Cadastrar Gerente**        | RF‑001 – Cadastro de gerente          | Verificar se o Administrador consegue realizar o cadastro de um novo gerente.     | [Screencast CT‑001](#)             |
| **CT‑002 – Cadastrar Morador**        | RF‑003 – Cadastro de moradores        | Verificar se o Gerente consegue cadastrar um novo morador.                        | [Screencast CT‑002](#)             |
| **CT‑003 – Registrar Itens de Limpeza** | RF‑005 – Registro de itens de limpeza | Verificar se o Gerente ou Faxineiro consegue cadastrar um item de limpeza.        | [Screencast CT‑003](#)             |
| **CT‑004 – Visualizar Itens de Cozinha** | RF‑008 – Visualizar itens de cozinha  | Verificar se o usuário consegue visualizar os itens de cozinha da casa vinculada. | [Screencast CT‑004](#)             |
| **CT‑005 – Gerar Relatório de Movimentação de Itens** | RF‑009 – Gerar relatório de movimentação de itens | Verificar se o Gerente consegue gerar relatórios de entrada e consumo de itens com filtros. | [Screencast CT‑005](#)             |

---

## Links úteis

- **Screencast**: entenda o que é e como gravar vídeos com ele

---

## Avaliação Geral

Os testes realizados demonstraram que o sistema está funcionando conforme o esperado na maioria dos casos. Abaixo, os pontos observados:

### Pontos Fortes
- A interface é simples e intuitiva, facilitando o uso por diferentes perfis de usuários (Administrador, Gerente, etc.).  
- O cadastro de gerentes e moradores foi concluído com sucesso, indicando que as funcionalidades essenciais estão operacionais.  
- A geração de relatórios com filtros funcionou bem, permitindo uma visão clara das movimentações.  

### Pontos Fracos
- **CT‑003**: não exibe mensagem clara ao cadastrar um item sem preencher a quantidade.  
- **CT‑004**: lista demora para carregar quando há muitos itens cadastrados, afetando a experiência do usuário.  

### Planos para Melhorias
1. Adicionar validações mais robustas nos campos obrigatórios, com mensagens de erro amigáveis ao usuário.  
2. Otimizar o carregamento das listas de itens (ex.: implementar paginação ou lazy loading).  

### Falhas Detectadas
- Falta de mensagem de erro no CT‑003 ao tentar cadastrar um item sem quantidade.  
- Atraso no carregamento da lista no CT‑004.  

### Melhorias Implementadas / Planejadas
- **CT‑003**: planeja-se incluir validação que exiba alerta ao usuário caso os campos obrigatórios não sejam preenchidos.  
- **CT‑004**: considerar ajuste no backend para suportar um número maior de itens sem comprometer a performance.  

---

## Ferramentas de Teste para JavaScript
- Jest  
- Cypress  
- Puppeteer  
- Selenium WebDriver  
