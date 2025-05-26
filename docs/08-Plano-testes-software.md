# Plano de testes de software

<span style="color:red">Pré-requisitos: <a href="02-Especificacao.md"> Especificação do projeto</a></span>, <a href="05-Projeto-interface.md"> Projeto de interface</a>

| **Campo**                                        | **Descrição**                                                                                                                                                                     |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Requisito associado**                          | RF-001 – Cadastro de gerente                                                                                                                                                      |
| **Objetivo do teste**                            | Verificar se o Administrador consegue realizar o cadastro de um novo gerente.                                                                                                     |
| **Passos**                                       | - Acessar o sistema como Administrador  <br> - Navegar até a seção "Cadastro de Gerente"  <br> - Preencher os dados obrigatórios (nome, e-mail, senha)  <br> - Clicar em "Salvar" |
| **Critério de êxito**                            | O gerente é cadastrado com sucesso e aparece na lista de gerentes.                                                                                                                |
| **Responsável pela elaboração do caso de teste** | *Jean Estanislau de Souza Guimarães*                                                                                                                                                    |

| **Campo**                                        | **Descrição**                                                                                                                                                   |
| ------------------------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Requisito associado**                          | RF-003 – Cadastro de moradores                                                                                                                                  |
| **Objetivo do teste**                            | Verificar se o Gerente consegue cadastrar um novo morador.                                                                                                      |
| **Passos**                                       | - Acessar o sistema como Gerente  <br> - Navegar até "Cadastro de Morador"  <br> - Preencher os dados do morador (nome, idade, etc.)  <br> - Clicar em "Salvar" |
| **Critério de êxito**                            | O morador é cadastrado e aparece na lista de moradores.                                                                                                         |
| **Responsável pela elaboração do caso de teste** | *Jean Estanislau de Souza Guimarães*                                                                                                                                  |

| **Campo**                                        | **Descrição**                                                                                                                                                                      |
| ------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Requisito associado**                          | RF-005 – Registro de itens de limpeza                                                                                                                                              |
| **Objetivo do teste**                            | Verificar se o Gerente ou Faxineiro consegue cadastrar um item de limpeza para a casa.                                                                                             |
| **Passos**                                       | - Acessar o sistema como Gerente ou Faxineiro  <br> - Navegar até "Estoque de Limpeza"  <br> - Preencher os dados do item (nome, quantidade, categoria)  <br> - Clicar em "Salvar" |
| **Critério de êxito**                            | O item é cadastrado e aparece na lista de itens de limpeza da casa.                                                                                                                |
| **Responsável pela elaboração do caso de teste** | *Jean Estanislau de Souza Guimarães*                                                                                                                                                     |

| **Campo**                                        | **Descrição**                                                                                                                                                                                          |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **Requisito associado**                          | RF-008 – Visualizar itens de cozinha                                                                                                                                                                   |
| **Objetivo do teste**                            | Verificar se o usuário consegue visualizar os itens de cozinha da casa vinculada.                                                                                                                      |
| **Passos**                                       | - Acessar o sistema como Cozinheiro, Gerente, Faxineiro ou Cuidador  <br> - Navegar até "Estoque de Cozinha"  <br> - Selecionar a casa (se necessário)  <br> - Visualizar a lista de itens disponíveis |
| **Critério de êxito**                            | Os itens de cozinha são exibidos corretamente.                                                                                                                                                         |
| **Responsável pela elaboração do caso de teste** | *Jean Estanislau de Souza Guimarães*                                                                                                                                                                         |

| **Campo**                                        | **Descrição**                                                                                                                                                  |
| ------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Requisito associado**                          | RF-009 – Gerar relatório de movimentação de itens                                                                                                              |
| **Objetivo do teste**                            | Verificar se o Gerente consegue gerar relatórios de entrada e consumo de itens com filtros.                                                                    |
| **Passos**                                       | - Acessar o sistema como Gerente  <br> - Navegar até "Relatórios"  <br> - Selecionar filtros de categoria, período e local  <br> - Clicar em "Gerar Relatório" |
| **Critério de êxito**                            | O relatório é exibido corretamente com base nos filtros aplicados.                                                                                             |
| **Responsável pela elaboração do caso de teste** | *Jean Estanislau de Souza Guimarães*                                                                                                                                 |

## Ferramentas de testes (opcional)

Comente sobre as ferramentas de testes utilizadas.
 
> **Links úteis**:
> - [IBM - criação e geração de planos de teste](https://www.ibm.com/developerworks/br/local/rational/criacao_geracao_planos_testes_software/index.html)
> - [Práticas e técnicas de testes ágeis](http://assiste.serpro.gov.br/serproagil/Apresenta/slides.pdf)
> - [Teste de software: conceitos e tipos de testes](https://blog.onedaytesting.com.br/teste-de-software/)
> - [Criação e geração de planos de teste de software](https://www.ibm.com/developerworks/br/local/rational/criacao_geracao_planos_testes_software/index.html)
> - [Ferramentas de teste para JavaScript](https://geekflare.com/javascript-unit-testing/)
> - [UX Tools](https://uxdesign.cc/ux-user-research-and-user-testing-tools-2d339d379dc7)
