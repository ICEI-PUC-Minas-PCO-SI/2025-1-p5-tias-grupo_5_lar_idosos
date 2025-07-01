# Plano de Testes de Usabilidade

**Pré‑requisitos**  
- Projeto de interface  
- Plano de testes de software  

Este plano avalia a qualidade da interface da aplicação de gestão de pertences da Alegro Vivare. Serão observadas tarefas críticas, identificação de dificuldades de navegação, clareza de instruções e eficiência, respeitando a LGPD (sem dados sensíveis que identifiquem voluntários).

---

## 1. Objetivo

Avaliar a usabilidade da aplicação, focando na experiência do usuário ao realizar:

- Cadastro de usuários  
- Registro de itens  
- Geração de relatórios  

---

## 2. Cenários de Teste

1. **Cadastro de um novo gerente** pelo Administrador  
2. **Cadastro de um novo morador** pelo Gerente  
3. **Registro de um item de limpeza** pelo Faxineiro  
4. **Geração de relatório de movimentação de itens** pelo Gerente  

---

## 3. Seleção dos Participantes

| Participante | Perfil                        | Critério de Seleção                        |
|--------------|-------------------------------|---------------------------------------------|
| P1           | Administrador                 | Familiaridade com gestão de sistemas       |
| P2           | Gerente                       | Experiente em cadastros e relatórios       |
| P3           | Faxineiro                     | Usuário básico de sistemas                 |
| P4           | Gerente                       | Focado em geração de relatórios            |

---

## 4. Procedimentos do Teste

- **Método**: Observação direta e medição  
- **Formato**: Testes presenciais com acompanhamento do condutor  
- **Ferramentas**:  
  - Computador com a aplicação  
  - Cronômetro  
  - Formulário de observação  
  - Gravação de tela (opcional)  

### 4.1 Dados Coletados

- **Taxa de sucesso**: Sim / Não  
- **Satisfação subjetiva**: Escala de 1 (Péssimo) a 5 (Ótimo)  
- **Tempo para conclusão**: Em segundos  
- **Número de cliques**: Total de cliques realizados  
- **Número de erros**: Total de erros cometidos  

---

## 5. Ordem de Execução das Tarefas

| Participante | Cenário                 |
|--------------|-------------------------|
| P1           | Cenário 1 (Gerente)     |
| P2           | Cenário 2 (Morador)     |
| P3           | Cenário 3 (Limpeza)     |
| P4           | Cenário 4 (Relatório)   |

---

## 6. Recursos Demandados

- Computador com acesso à aplicação  
- Ambiente silencioso  
- Cronômetro  
- Formulário de observação  
- Gravação de tela (opcional)  

---

## 7. Métricas de Avaliação

| Métrica              | Unidade               |
|----------------------|-----------------------|
| Taxa de sucesso      | Sim / Não             |
| Satisfação subjetiva | 1–5                   |
| Tempo de conclusão   | Segundos              |
| Número de cliques    | Total de cliques      |
| Número de erros      | Total de erros        |

---

## 8. Detalhamento dos Cenários

### Cenário 1: Cadastro de um novo gerente pelo Administrador  
**Descrição**: Realizar o cadastro de um gerente.  
**Tarefas**:  
1. Faça login como Administrador.  
2. Navegue até **Cadastro de Usuários**.  
3. Selecione **Cadastrar Novo Gerente**.  
4. Preencha nome, e‑mail e senha.  
5. Salve o cadastro.  
**Critério de êxito**: Novo gerente aparece na lista.

---

### Cenário 2: Cadastro de um novo morador pelo Gerente  
**Descrição**: Realizar o cadastro de um morador.  
**Tarefas**:  
1. Faça login como Gerente.  
2. Navegue até **Cadastro de Moradores**.  
3. Selecione **Cadastrar Novo Morador**.  
4. Preencha nome, idade e demais dados obrigatórios.  
5. Salve o cadastro.  
**Critério de êxito**: Novo morador aparece na lista.

---

### Cenário 3: Registro de um item de limpeza pelo Faxineiro  
**Descrição**: Registrar um item de limpeza no estoque.  
**Tarefas**:  
1. Faça login como Faxineiro.  
2. Navegue até **Estoque de Limpeza**.  
3. Selecione **Registrar Novo Item**.  
4. Preencha nome, quantidade e categoria.  
5. Salve o registro.  
**Critério de êxito**: Item aparece na lista de limpeza.

---

### Cenário 4: Geração de relatório de movimentação de itens pelo Gerente  
**Descrição**: Gerar relatório com filtros aplicados.  
**Tarefas**:  
1. Faça login como Gerente.  
2. Navegue até **Relatórios**.  
3. Selecione **Relatório de Movimentação de Itens**.  
4. Aplique filtros (categoria, período, local).  
5. Gere o relatório.  
**Critério de êxito**: Relatório exibe dados corretos.

---

## 9. Resultados Esperados

- **Taxa de sucesso**: 100%  
- **Satisfação subjetiva**: ≥ 4 (Bom)  
- **Tempo por tarefa**: < 2 minutos  
- **Cliques por tarefa**: < 10  
- **Erros**: Zero ou mínimo  

---

## 10. Considerações Finais

Os testes, conduzidos presencialmente, fornecerão métricas que orientarão melhorias na interface e na experiência do usuário, garantindo conformidade com a LGPD.  
