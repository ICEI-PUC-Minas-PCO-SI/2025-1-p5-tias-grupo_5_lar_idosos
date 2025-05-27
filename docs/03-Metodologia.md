# Metodologia

<span style="color:red">Pré-requisitos: <a href="02-Especificacao.md">Especificação do projeto</a></span>

Este documento descreve a metodologia de trabalho adotada pelo grupo, composto por alunos do quinto período de Sistemas de Informação, para o desenvolvimento do sistema de gestão de pertences e insumos da Casa de Repouso Alegro Vivare. Nele detalhamos os ambientes de trabalho, o controle de versão, o planejamento em sprints e as ferramentas de organização.

## 1. Controle de versão

A equipe utilizou o **Git** como sistema de controle de versões e o **GitHub** como plataforma de hospedagem do repositório.

- **Branches principais**:
  - `main`: código estável e homologado;
  - `dev`: desenvolvimento de funcionalidades em andamento;
  - `testing`: versão para testes de integração e QA;
  - `unstable`: entregas de proof-of-concept e protótipos.

- **Gestão de commits e merges**:
  - Mensagens de commit no formato: `<tipo>(<escopo>): <descrição>` (ex.: `feat(api): criar endpoint de itens`);
  - Pull requests revisados por pelo menos dois colegas antes do merge;
  - Uso de tags semânticas (`v1.0.0`, `v1.1.0`) para marcar releases.

- **Issues e labels**:
  - `documentation`: melhoria ou criação de documentação;
  - `bug`: correção de erro funcional;
  - `enhancement`: refinamento de funcionalidade existente;
  - `feature`: implementação de nova funcionalidade;
  - `help wanted`: tarefas abertas para quem desejar contribuir.

A gestão de issues ocorre dentro do GitHub Issues, com milestones mensais correspondentes às sprints e atribuição clara de responsáveis.

## 2. Planejamento do projeto

O projeto seguiu a estrutura de sprints quinzenais, adotando práticas ágeis inspiradas no Scrum.

### 2.1 Divisão de papéis

#### Sprint 1 (01/04/2025 – 14/04/2025)
- **Scrum Master**: Jean Estanislau de Souza Guimarães  
- **Desenvolvedor Front‑end**: João Vitor de Souza França  
- **Desenvolvedor Back‑end**: Otávio Soares da Costa  
- **QA/Testes**: Pedro Henrique Morais de Assis  
- **Documentação**: Thiago Xavier Medina  
- **UX/UI (protótipos)**: Yuri Zocoli Silva  

#### Sprint 2 (15/04/2025 – 28/04/2025)
- **Scrum Master**: João Vitor de Souza França  
- **Desenvolvedor Front‑end**: Otávio Soares da Costa  
- **Desenvolvedor Back‑end**: Pedro Henrique Morais de Assis  
- **QA/Testes**: Thiago Xavier Medina  
- **Documentação**: Yuri Zocoli Silva  
- **UX/UI (protótipos)**: Jean Estanislau de Souza Guimarães  

### 2.2 Quadro de tarefas

#### Sprint 1 (atualizado em: 14/04/2025)

| Responsável                         | Tarefa/Requisito                     | Iniciado em | Prazo      | Status | Terminado em |  
| ----------------------------------- | ------------------------------------ | ----------- | ---------- | ------ | ------------ |  
| Jean Estanislau de Souza Guimarães | Configurar repositório e branches    | 01/04/2025  | 03/04/2025 | ✔️     | 02/04/2025   |  
| João Vitor de Souza França         | Protótipo de telas principais (Figma)| 02/04/2025  | 07/04/2025 | ✔️     | 06/04/2025   |  
| Otávio Soares da Costa             | Setup API Node.js e rotas iniciais   | 03/04/2025  | 10/04/2025 | 📝     |              |  
| Pedro Henrique Morais de Assis     | Plano de testes unitários e integração| 04/04/2025  | 12/04/2025 | 📝     |              |  
| Thiago Xavier Medina               | Documentação da metodologia          | 01/04/2025  | 08/04/2025 | ✔️     | 07/04/2025   |  
| Yuri Zocoli Silva                  | Definição das personas e jornada     | 02/04/2025  | 09/04/2025 | ✔️     | 09/04/2025   |  

#### Sprint 2 (atualizado em: 28/04/2025)

| Responsável                         | Tarefa/Requisito                           | Iniciado em | Prazo      | Status | Terminado em |  
| ----------------------------------- | ------------------------------------------ | ----------- | ---------- | ------ | ------------ |  
| Thiago Xavier Medina         | Implementar componentes React              | 15/04/2025  | 21/04/2025 | ✔️     | 20/04/2025   |  
|  João Vitor de Souza França            | Conectar API ao banco MySQL                | 16/04/2025  | 22/04/2025 | 📝     |              |  
| Pedro Henrique Morais de Assis     | Testes de integração (Postman)             | 17/04/2025  | 24/04/2025 | ⌛     |              |  
| Otávio Soares da Costa               | Atualizar README e documentação de API     | 18/04/2025  | 25/04/2025 | 📝     |              |  
| Yuri Zocoli Silva                  | Refinar protótipos com feedback do cliente | 19/04/2025  | 27/04/2025 | ✔️     | 26/04/2025   |  

_Legenda: ✔️ terminado | 📝 em execução | ⌛ atrasado | ❌ não iniciado_

## 3. Processo

Adotamos o **GitHub Projects** como ferramenta de gerenciamento ágil, usando quadros Kanban para visualizar o progresso: colunas _Backlog_, _Em andamento_, _Em revisão_ e _Concluído_. As reuniões de planejamento (planning), daily stand‑ups e review foram realizadas semanalmente via **Google Meet**, com atas registradas no próprio GitHub.

## 4. Relação de ambientes de trabalho

### 4.1 Ferramentas e plataformas

| Ambiente                        | Plataforma/Software      | Propósito                                               |  
| ------------------------------- | ------------------------ | ------------------------------------------------------- |  
| Repositório de código fonte     | GitHub                   | Versionamento, PRs, Issues e Releases                   |  
| Gerenciamento de projeto         | GitHub Projects          | Kanban, backlogs e milestones                           |  
| Documentação                     | GitHub Wiki / Markdown   | Armazenar especificações, metodologia e registros       |  
| Protótipos de interface          | Figma                    | Design de telas e fluxos de usuário                     |  
| Ambiente de desenvolvimento      | Visual Studio Code       | Edição de código, extensões e depuração                 |  
| Banco de dados                   | MySQL (XAMPP local)      | Persistência de dados em ambiente de desenvolvimento    |  
| Testes automatizados             | Jest (front-end) / Mocha (back-end) | Validação de componentes e APIs                   |  
| Comunicação interna              | Slack                    | Chats em tempo real, canais por assunto e integrações   |  
| Hospedagem de teste              | Vercel (front-end) / Heroku (back-end) | Deploy de versões de teste                     |  

Todas as escolhas de ferramentas levaram em conta integração, facilidade de uso e padronização com as práticas de mercado.
