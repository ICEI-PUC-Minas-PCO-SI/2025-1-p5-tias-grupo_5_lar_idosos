# Especificação do Projeto

> **Pré-requisitos:** [Documentação de contexto](01-Contexto.md)

Este documento apresenta a definição do problema e a ideia de solução a partir da perspectiva do usuário, incluindo diagramas de personas, histórias de usuários, requisitos funcionais e não funcionais, restrições e diagramas de caso de uso.

---

## 1. Personas

Com base nos documentos da disciplina e referências externas, enumeramos as principais personas que interagem com a solução:

1. **Administrador** (Jean Estanislau de Souza Guimarães)
2. **Gerente** (João Vitor de Souza França)
3. **Enfermeiro/Cuidador** (Otávio Soares da Costa)
4. **Faxineiro** (Pedro Henrique Morais de Assis)
5. **Cozinheiro** (Thiago Xavier Medina)

Cada persona representa um usuário real do sistema, com objetivos e necessidades distintas no gerenciamento de pertences e insumos.

---

## 2. Histórias de Usuários

| EU COMO...       | QUERO/PRECISO...               | PARA...                          |
| ---------------- | ------------------------------ | -------------------------------- |
| Administrador    | Cadastrar gerentes             | Gerenciar permissões de acesso   |
| Gerente          | Cadastrar moradores            | Controlar itens pessoais e gerais|
| Enfermeiro/Cuidador | Registrar itens de moradores | Garantir rastreabilidade         |
| Faxineiro        | Registrar itens de limpeza     | Manter estoque organizado        |
| Cozinheiro       | Registrar itens de cozinha     | Gerenciar suprimentos de alimentos|

---

## 3. Requisitos

### 3.1 Requisitos Funcionais

| ID     | Descrição                                    | Prioridade |
| ------ | -------------------------------------------- | ---------- |
| RF-001 | Cadastro de gerente                          | Essencial  |
| RF-002 | Cadastro de usuários não gerentes            | Essencial  |
| RF-003 | Cadastro de moradores                        | Essencial  |
| RF-004 | Registro e visualização de itens de moradores| Essencial  |
| RF-005 | Registro de itens de limpeza                 | Essencial  |
| RF-006 | Visualização de itens de limpeza             | Importante |
| RF-007 | Registro de itens de cozinha                 | Essencial  |
| RF-008 | Visualização de itens de cozinha             | Importante |
| RF-009 | Geração de relatórios de movimentação        | Essencial  |

### 3.2 Requisitos Não Funcionais

| ID      | Descrição                                                        | Prioridade |
| ------- | ---------------------------------------------------------------- | ---------- |
| RNF-001 | Interface responsiva para desktop, tablet e smartphone           | Essencial  |
| RNF-002 | Tempo de resposta ≤ 2 segundos sob carga média (5 usuários)      | Essencial  |
| RNF-003 | Autenticação e controle de acesso por perfil                     | Essencial  |
| RNF-004 | Suporte a múltiplos browsers (Chrome, Firefox, Edge)            | Desejável  |

### 3.3 Requisitos de Domínio

| ID     | Descrição                                                    | Prioridade |
| ------ | ------------------------------------------------------------ | ---------- |
| RD-001 | Classificação de itens em categoria e subcategoria           | Essencial  |
| RD-002 | Validação de quantidade (1 ≤ qtde ≤ 999)                     | Essencial  |

---

## 4. Restrições

| ID  | Restrição                                                   |
| --- | ----------------------------------------------------------- |
| 001 | Entrega até o final do semestre                             |
| 002 | Custo total não deve exceder o orçamento definido           |

---

## 5. Diagrama de Casos de Uso

![image](https://github.com/user-attachments/assets/2d747ec3-69d9-4c88-b51f-b0a8560b20dd)


Descrição: Diagrama com atores (Administrador, Gerente, Cuidador) e casos de uso vinculados aos requisitos funcionais.

---

## 6. Apresentação

**Equipe:** Jean Estanislau de Souza Guimarães, João Vitor de Souza França, Otávio Soares da Costa, Pedro Henrique Morais de Assis, Thiago Xavier Medina, Yuri Zocoli Silva.

**Instituição Parceira:** Alegro Vivare
- Casa de repouso para idosos com duas unidades em Contagem, MG
- Horário de funcionamento 24/7
- Responsável: Edilson Emilio (Coordenador)
- Contato: (31) 9 9180-8263 | alegrovivare@gmail.com
- Site: https://www.casaderepousoalegrovivare.com

**Descrição da Demanda:**
Gestão digital de pertences pessoais e insumos gerais, substituindo registros manuais e melhorando rastreabilidade, eficiência e confiabilidade.

---

## 7. Objetivos e Justificativa

- **Objetivo Geral:** Implementar sistema de gestão de pertences e insumos para lares de longa permanência.
- **Justificativa:** Precisão na identificação de pertences, controle de consumo, apoio à tomada de decisão e aplicação de conhecimentos técnicos em contexto social.

### 7.1 ODS Relacionados
- **ODS 3:** Saúde e Bem-Estar
- **ODS 11:** Cidades e Comunidades Sustentáveis
- **ODS 12:** Consumo e Produção Responsáveis

---

## 8. Solução Proposta

Aplicação web para gerenciamento de estoque em lares de idosos, com cadastros de insumos adquiridos e doações, rastreabilidade e relatórios detalhados.

### 8.1 Arquitetura

![image](https://github.com/user-attachments/assets/b113c556-bd98-4e32-8ba7-29eb42ffd076)


**Tech Stack:**
- Front-End: HTML5, CSS3, JavaScript
- Back-End: Node.js
- Banco de Dados: MySQL
- Ambiente de Desenvolvimento: VS Code
- WebHost: A definir

---

## 9. Gestão de Riscos

| Descrição                                  | Fase                   | Solução                                   | Classificação        |
| ------------------------------------------ | ---------------------- | ------------------------------------------| -------------------- |
| Alteração nos requisitos                   | Desenvolvimento        | Reuniões frequentes                       | Moderado             |
| Saída inesperada de membro-chave           | Qualquer fase          | Documentação e treinamentos               | Elevado              |
| Instabilidade na hospedagem                | Entrega final          | Provedores confiáveis e backup            | Extremo              |
| Falha de comunicação com o cliente         | Definição de requisitos| Canais claros e reuniões regulares        | Moderado             |

---

