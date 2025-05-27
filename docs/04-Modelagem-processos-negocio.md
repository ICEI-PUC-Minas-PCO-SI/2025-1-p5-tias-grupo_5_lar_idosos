# Modelagem dos Processos de Negócio

## 📌 Modelagem AS-IS (Situação Atual)

Atualmente, os processos de atendimento e acompanhamento de solicitações são realizados de forma **manual e descentralizada**, o que gera uma série de ineficiências operacionais:

### Etapas da Situação Atual:
- O cliente entra em contato por meios informais (telefone, e-mail).
- O atendente registra a solicitação em planilhas ou anotações manuais.
- A requisição é repassada manualmente a outros setores.
- O retorno ao cliente depende de verificações pontuais, sem rastreabilidade.
- Não há um histórico centralizado ou relatórios automatizados.

### Problemas Identificados:
- Falta de controle sobre prazos e prioridades.
- Aumento do número de reclamações.
- Baixa produtividade da equipe.
- Comunicação falha entre os setores envolvidos.

---

## 🚀 Modelagem TO-BE (Proposta de Solução)

A proposta da equipe consiste na **implantação de um sistema centralizado**, que automatize e integre todas as etapas de solicitação e atendimento, com base em princípios de qualidade definidos pela **ISO/IEC 25010**.

### Funcionalidades Esperadas:
- Registro eletrônico de todas as requisições, com geração de número de protocolo.
- Acompanhamento do status da solicitação em tempo real.
- Notificações automáticas para os responsáveis via e-mail/SMS.
- Geração de relatórios gerenciais e indicadores de desempenho.
- Armazenamento do histórico completo de solicitações e atendimentos.

---

## 🎯 Limites da Solução

- Requer **acesso à internet** para operação do sistema.
- Demanda **treinamento inicial** para os usuários.
- Pode envolver **custos de infraestrutura e manutenção**.

---

## 🎯 Alinhamento com os Objetivos do Negócio

- Redução de retrabalho.
- Melhoria na comunicação entre setores.
- Aumento da **transparência** e **rastreabilidade**.
- Atendimento mais ágil, eficaz e orientado ao cliente.

---

## 🧩 Processos Modelados

### 🔹 PROCESSO 1 – Registro de Solicitações
- Recebe e registra solicitações de clientes por meio do sistema.
- Gera número de protocolo automaticamente.
- Reduz erros manuais e perdas de informação.

### 🔹 PROCESSO 2 – Atendimento da Solicitação
- Encaminhamento automático ao setor responsável.
- Acompanhamento do status da solicitação.
- Comunicação com o solicitante via e-mail ou SMS.

---

## 📈 Indicadores de Desempenho

| Indicador                     | Objetivo                                       | Descrição                                                   | Fonte de Dados         | Fórmula de Cálculo                                             |
|------------------------------|------------------------------------------------|-------------------------------------------------------------|------------------------|----------------------------------------------------------------|
| Percentual de Reclamações    | Avaliar a satisfação dos usuários              | Proporção de reclamações em relação ao total de atendimentos | Tabela Reclamações     | número de reclamações / número total de atendimentos           |
| Taxa de Requisições Atendidas| Medir a eficácia no atendimento                | Percentual de requisições atendidas na semana                | Tabela Solicitações    | (requisições atendidas / requisições totais) * 100             |
| Taxa de Entrega de Material  | Controlar entregas concluídas                  | Percentual de pedidos entregues dentro do prazo mensal       | Tabela Pedidos         | (pedidos entregues / pedidos totais) * 100                     |
| Tempo Médio de Atendimento   | Reduzir tempo de resposta                      | Tempo médio entre a solicitação e a conclusão do atendimento | Tabela Atendimentos    | soma dos tempos de atendimento / número de atendimentos        |
| Índice de Satisfação do Cliente | Medir percepção de valor pelos usuários     | Avaliação pós-atendimento via formulário                     | Tabela Avaliações      | (soma das notas de satisfação / número total de respostas) * 100 |

