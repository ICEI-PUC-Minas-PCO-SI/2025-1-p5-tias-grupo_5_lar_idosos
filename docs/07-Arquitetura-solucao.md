# Arquitetura da solução

## Segue conforme o planejamento as seguintes tecnologias : 
Front-end: HTML, JavaScript e CSS, garantindo uma interface simples e responsiva.

Back-end: C# com ASP.NET, proporcionando segurança e facilidade na integração com o banco de dados.

Banco de Dados: PostgreSQL, pela robustez e compatibilidade com a aplicação.

Hospedagem: Serviço de Web Hosting com suporte a aplicações .NET e banco SQL. (Provedor não escolhido ainda)

## Diagrama de classes

![image](images/DiagramaClasses.PNG)

##  Modelo de dados

![image](images/BD.PNG)

### Modelo ER

![image](images/classes.PNG)
 
### Modelo físico

Insira aqui o script de criação das tabelas do banco de dados.

Veja um exemplo:

```sql
CREATE TABLE Login (
    idLogin INT PRIMARY KEY,
    Password VARCHAR(60),
    Host VARCHAR(45),
    LastAccess DATETIME
);

CREATE TABLE Users (
    idUsers INT PRIMARY KEY,
    CPF VARCHAR(14),
    Name VARCHAR(100),
    ChangeDate DATETIME,
    Login_idLogin INT,
    FOREIGN KEY (Login_idLogin) REFERENCES Login(idLogin)
);

CREATE TABLE Roles (
    idRoles INT PRIMARY KEY,
    Name VARCHAR(45)
);

CREATE TABLE Users_has_Roles (
    Users_idUsers INT,
    Roles_idRoles INT,
    PRIMARY KEY (Users_idUsers, Roles_idRoles),
    FOREIGN KEY (Users_idUsers) REFERENCES Users(idUsers),
    FOREIGN KEY (Roles_idRoles) REFERENCES Roles(idRoles)
);

CREATE TABLE Locals (
    idLocals INT PRIMARY KEY,
    Name VARCHAR(30),
    Address VARCHAR(200),
    CNPJ VARCHAR(20)
);

CREATE TABLE Users_has_Locals (
    Users_idUsers INT,
    Locals_idLocals INT,
    PRIMARY KEY (Users_idUsers, Locals_idLocals),
    FOREIGN KEY (Users_idUsers) REFERENCES Users(idUsers),
    FOREIGN KEY (Locals_idLocals) REFERENCES Locals(idLocals)
);

CREATE TABLE Residents (
    idResidents INT PRIMARY KEY,
    Name VARCHAR(100),
    CPF VARCHAR(14),
    Birthdate DATE,
    Observation VARCHAR(120),
    Locals_idLocals INT,
    ChangeDate DATETIME,
    FOREIGN KEY (Locals_idLocals) REFERENCES Locals(idLocals)
);

CREATE TABLE Storage (
    idStorage INT PRIMARY KEY,
    Name VARCHAR(45),
    Quantity FLOAT,
    Category VARCHAR(45),
    Unit INT,
    Description VARCHAR(100),
    Creation_Date DATE,
    Locals_idLocals INT,
    Residents_idResidents INT,
    ChangeDate DATETIME,
    FOREIGN KEY (Locals_idLocals) REFERENCES Locals(idLocals),
    FOREIGN KEY (Residents_idResidents) REFERENCES Residents(idResidents)
);

CREATE TABLE Moviments (
    idMoviments INT PRIMARY KEY,
    Direct VARCHAR(1),
    Quantity FLOAT,
    Date DATETIME,
    Users_idUsers INT,
    Storage_idStorage INT,
    FOREIGN KEY (Users_idUsers) REFERENCES Users(idUsers),
    FOREIGN KEY (Storage_idStorage) REFERENCES Storage(idStorage)
);

```
Esse script deverá ser incluído em um arquivo .sql na pasta [de scripts SQL](../src/db).


## Tecnologias
A implantação da aplicação será realizada em um ambiente único, hospedado em um serviço de web hosting que suportará a execução completa do sistema, incluindo front-end, back-end e banco de dados.


- Tecnologias utilizadas:

Front-end: HTML, JavaScript e CSS, garantindo uma interface simples e responsiva.
Back-end: C# com ASP.NET, proporcionando segurança e facilidade na integração com o banco de dados.
Banco de Dados: PostgreSQL, pela robustez e compatibilidade com a aplicação.
Hospedagem: Serviço de Web Hosting com suporte a aplicações .NET e banco SQL. (Provedor não escolhido ainda)


| **Dimensão**   | **Tecnologia**  |
| ---            | ---             |
| Front-end      | HTML + CSS + JS + React |
| Back-end       | C# ASP.NET         |
| SGBD           | SQL          |
| Desenvolvimento         | VS Code          |


## Hospedagem

Estamos analisando a melhor forma de hospedar que seja eficiente e entregue uma bom desempenho aos usuários.

## Qualidade de software

Conceituar qualidade é uma tarefa complexa, mas pode ser vista como um método gerencial que, por meio de procedimentos disseminados por toda a organização, busca garantir um produto final que satisfaça às expectativas dos stakeholders.

No contexto do desenvolvimento de software, qualidade pode ser entendida como um conjunto de características a serem atendidas, de modo que o produto de software atenda às necessidades de seus usuários. Entretanto, esse nível de satisfação nem sempre é alcançado de forma espontânea, devendo ser continuamente construído. Assim, a qualidade do produto depende fortemente do seu respectivo processo de desenvolvimento.

## Norma ISO/IEC 25010

A norma internacional ISO/IEC 25010, que é uma atualização da ISO/IEC 9126, define oito características principais e 30 subcaracterísticas de qualidade para produtos de software. Essas características abrangem aspectos como funcionalidade, usabilidade, confiabilidade, eficiência, mantenibilidade, portabilidade, segurança e compatibilidade.

## Subcaracterísticas Selecionadas para o Projeto

Considerando os objetivos do nosso projeto e aspectos simples de qualidade que queremos priorizar, nossa equipe optou por focar nas seguintes subcaracterísticas da ISO/IEC 25010:

- **Funcionalidade - Adequação Funcional:** para garantir que o software entregue as funções necessárias e esperadas pelo usuário.
- **Usabilidade - Operabilidade:** para assegurar que o software seja fácil de operar e aprender, melhorando a experiência do usuário.
- **Confiabilidade - Tolerância a Falhas:** para que o software continue funcionando mesmo em situações inesperadas.
- **Eficiência - Desempenho:** para que o software responda rapidamente e utilize os recursos de forma otimizada.
- **Mantenibilidade - Modularidade:** para facilitar a atualização e manutenção futura do sistema.

## Justificativa das Escolhas

Essas subcaracterísticas foram escolhidas porque refletem diretamente as expectativas dos usuários finais e da equipe de desenvolvimento. A adequação funcional garante que o software entregue valor, enquanto a usabilidade assegura que os usuários consigam utilizar o sistema sem dificuldades. A confiabilidade e a eficiência impactam na robustez e na satisfação do cliente, reduzindo interrupções e melhorando a performance. Por fim, a modularidade é essencial para que o software possa evoluir sem grandes esforços ou riscos.

## Métricas para Avaliação

| Subcaracterística      | Métrica                                  | Descrição                                    |
|-----------------------|-----------------------------------------|----------------------------------------------|
| Adequação Funcional   | % de requisitos implementados           | Porcentagem dos requisitos funcionais atendidos |
| Operabilidade         | Tempo médio para aprendizado do usuário | Tempo necessário para um novo usuário operar o sistema com proficiência |
| Tolerância a Falhas   | Taxa de falhas críticas por período     | Número de falhas que causam interrupções críticas |
| Desempenho            | Tempo médio de resposta                  | Tempo que o sistema leva para responder a uma solicitação |
| Modularidade          | Número de módulos independentes          | Quantidade de módulos ou componentes separados que facilitam manutenção |
