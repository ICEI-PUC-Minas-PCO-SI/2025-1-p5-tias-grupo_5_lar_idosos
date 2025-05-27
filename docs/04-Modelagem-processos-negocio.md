# 📊 Modelagem dos Processos de Negócio

## 📌 Modelagem AS-IS (Situação Atual)

A situação atual envolve a gestão **manual e descentralizada** dos processos de atendimento e acompanhamento de solicitações feitas por usuários. Não há um sistema único responsável por centralizar os pedidos, o que gera **retrabalho**, **comunicação falha**, **atrasos no atendimento** e **baixa rastreabilidade** das ações executadas.

As etapas geralmente incluem:

1. O cliente entra em contato por meios informais (telefone, e-mail).
2. O atendente anota a solicitação em planilhas ou cadernos.
3. A requisição é passada manualmente a outros setores.
4. O retorno ao cliente depende da verificação pontual e não é rastreado.
5. Não há histórico centralizado ou relatórios automatizados.

A ausência de automação resulta em:

- Falta de controle dos prazos.
- Aumento de reclamações.
- Baixa produtividade da equipe.

## 🚀 Modelagem TO-BE (Proposta de Solução)

A proposta de solução consiste na **implementação de um sistema centralizado** que automatize e integre os processos de solicitação e atendimento. Esse sistema será capaz de:

- Registrar todas as requisições com número de protocolo.
- Acompanhar o status em tempo real.
- Notificar os responsáveis por meio de alertas.
- Gerar relatórios de desempenho.
- Armazenar o histórico completo de interações.

### 🎯 Limites da Solução

- Dependência de acesso à internet.
- Necessidade de capacitação inicial dos usuários.
- Eventuais custos com infraestrutura e manutenção.

### 🎯 Alinhamento com os objetivos do negócio

- Redução de retrabalho.
- Melhoria na comunicação entre setores.
- Aumento da transparência e rastreabilidade.
- Atendimento mais ágil e eficiente ao cliente.

## 🧩 Processos Modelados

### PROCESSO 1 - Registro de Solicitações

- Recebe e registra solicitações de clientes via sistema.
- Gera número de protocolo automaticamente.
- Reduz erros de digitação e perda de informações.

### PROCESSO 2 - Atendimento da Solicitação

- Encaminhamento automático ao setor responsável.
- Acompanhamento do status da solicitação.
- Comunicação com o solicitante por e-mail ou SMS.

---

## 📈 Indicadores de Desempenho

| Indicador                       | Objetivos                                                              | Descrição                                                                 | Fonte de dados         | Fórmula de cálculo                                                                 |
|--------------------------------|------------------------------------------------------------------------|---------------------------------------------------------------------------|------------------------|------------------------------------------------------------------------------------|
| Percentual de reclamações      | Avaliar quantitativamente as reclamações                              | Percentual de reclamações em relação ao total de atendimentos             | Tabela Reclamações     | número total de reclamações / número total de atendimentos                        |
| Taxa de requisições atendidas  | Melhorar a prestação de serviços medindo a porcentagem de requisições | Mede a % de requisições atendidas na semana                              | Tabela Solicitações    | (número de requisições atendidas / número total de requisições) * 100            |
| Taxa de entrega de material    | Manter controle sobre os materiais que estão sendo entregues          | Mede % de material entregue dentro do mês                                 | Tabela Pedidos         | (número de pedidos entregues / número total de pedidos) * 100                     |
| Tempo médio de atendimento     | Reduzir o tempo de resposta ao cliente                                 | Mede o tempo médio entre solicitação e conclusão                          | Tabela Atendimentos    | soma dos tempos de atendimento / número total de atendimentos                     |
| Índice de satisfação do cliente| Medir o nível de contentamento dos usuários                            | Avaliação via formulário após conclusão do atendimento                    | Tabela Avaliações      | (soma das notas de satisfação / número total de respostas) * 100                  |

---

