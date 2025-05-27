# 📊 Modelagem dos Processos de Negócio com Base na Estrutura do Banco de Dados

## 📌 Modelagem AS-IS (Situação Atual)

Atualmente, o processo de controle de usuários, moradores, movimentações de estoque e registros é feito de forma **manual ou em sistemas não integrados**, o que gera os seguintes problemas:

### Etapas da Situação Atual
- Cadastro e controle de usuários e moradores feito de forma isolada.
- Movimentações de itens de estoque feitas sem validação ou rastreabilidade.
- Comunicação entre setores ocorre por meios informais.
- Dificuldade de auditar o uso de insumos e identificar responsáveis.
- Ausência de controle automatizado sobre locais, acessos e entregas.

### Consequências
- 🌐 Falta de integração entre usuários, estoques e movimentações.
- ⏳ Atrasos no controle de materiais e baixa produtividade.
- ❌ Perda de dados históricos e baixa rastreabilidade.
- 📉 Dificuldade para gerar relatórios e indicadores de desempenho.

---

## 🚀 Modelagem TO-BE (Proposta de Solução)

A proposta visa a **implantação de um sistema centralizado**, com base nas tabelas e relacionamentos existentes, que permita:

- 📥 Cadastro e autenticação de usuários via tabela `Login`.
- 👥 Associação entre usuários, seus papéis (`Roles`) e locais de atuação (`Locals`).
- 🏠 Controle dos moradores por local, via `Residents`.
- 📦 Registro estruturado de itens e quantidades em estoque (`Storage`).
- 🔁 Registro de movimentações com entrada/saída e rastreabilidade (`Moviments`).

### Funcionalidades Esperadas
- Cadastro completo de usuários com controle de acesso (login/senha e papel).
- Associação de usuários a locais e moradores.
- Controle de estoque por local e por morador, com histórico de alterações.
- Movimentações registradas por data, usuário e quantidade.
- Relatórios de desempenho, consumo, histórico de movimentações e auditoria.

---

## 🧩 Processos Modelados

### 🔹 PROCESSO 1 – Registro e Acesso de Usuário
- Autenticação via `Login`.
- Registro de acesso com IP (campo `Host`) e data (`LastAccess`).
- Associação do usuário ao seu papel (admin, operador, etc.) via `Users_has_Roles`.

### 🔹 PROCESSO 2 – Associação a Locais
- Usuários são associados a locais via `Users_has_Locals`.
- Cada local possui endereço e CNPJ.

### 🔹 PROCESSO 3 – Gestão de Moradores
- Cadastro de moradores em `Residents`, com CPF, nascimento, e local vinculado.
- Observações e alterações registradas com data (`ChangeDate`).

### 🔹 PROCESSO 4 – Controle de Estoque
- Cadastro de itens em `Storage`, com nome, quantidade, categoria e unidade.
- Associação do item a um local e morador, com rastreamento de alterações.

### 🔹 PROCESSO 5 – Movimentações de Itens
- Entrada/saída de materiais via `Moviments`.
- Registro da direção (`Direct`: E/S), quantidade, data, usuário responsável e item movimentado.

---

## 📈 Indicadores de Desempenho

| Indicador                      | Objetivo                                  | Fonte de Dados     | Fórmula de Cálculo                                                                 |
|-------------------------------|-------------------------------------------|--------------------|------------------------------------------------------------------------------------|
| **Tempo Médio de Movimentação** | Medir agilidade no processo de estoque    | Moviments          | Média do tempo entre registros sucessivos de movimentação                         |
| **Itens mais Movimentados**    | Identificar insumos com maior uso         | Moviments + Storage| `COUNT(*)` agrupado por `Storage_idStorage` e ordenado em ordem decrescente       |
| **Quantidade Total em Estoque**| Avaliar a quantidade atual por categoria  | Storage            | `SUM(Quantity)` agrupado por `Category`                                           |
| **Movimentações por Usuário**  | Rastrear produtividade/responsabilidade   | Moviments + Users  | `COUNT(*)` agrupado por `Users_idUsers`                                           |
| **Taxa de Alteração de Estoque**| Avaliar frequência de mudanças            | Moviments          | `(Número de movimentações / total de itens) * 100`                                |

