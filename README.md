# E-commerce API

Este projeto é uma API de e-commerce desenvolvida com Spring Boot. A API permite gerenciar produtos, pedidos e usuários, utilizando PostgreSQL como banco de dados principal e H2 para testes.

## Tecnologias Utilizadas

- **Spring Boot**: Framework principal para a construção da aplicação.
- **Spring Data JPA**: Para a persistência e acesso aos dados.
- **Spring Web**: Para a criação dos endpoints REST.
- **PostgreSQL**: Banco de dados principal.
- **H2**: Banco de dados em memória para testes.

## Modelo de Domínio

![Modelo de Domínio](https://github.com/user-attachments/assets/b16f15fd-d739-442f-b15f-0d474f9f7949)

## Configuração do Projeto

### Pré-requisitos

- Java 17 ou superior
- Maven
- PostgreSQL

### Configuração do Banco de Dados

No arquivo `application-dev.properties`, configure as credenciais do PostgreSQL:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/seu_banco_de_dados
spring.datasource.username=seu_usuario
spring.datasource.password=sua_senha
spring.jpa.hibernate.ddl-auto=update
```

No arquivo `application-test.properties`, configure as credenciais do Banco H2:

```properties
spring.datasource.url=jdbc:h2:mem:testdb
spring.datasource.driverClassName=org.h2.Driver
spring.datasource.username=sa
spring.datasource.password=password
spring.h2.console.enabled=true
spring.h2.console.path=/h2-console
```

No arquivo `application.properties`, configure as credenciais do profile que você irá utilizar:

```properties
spring.application.name=java-spring-project
spring.profiles.active=(profile "dev" ou "test")
spring.jpa.open-in-view=true
```

## Executando a Aplicação

Clone o repositório:

```bash
git clone https://github.com/seu-usuario/springboot-jpa.git
```

Navegue até o diretório do projeto:

```bash
cd springboot-jpa
```

Compile e rode a aplicação abrindo o terminal dentro da pasta do projeto usando os comandos:

1. `mvn clean install`  
2. `mvn spring-boot:run`

## Caso Esteja usando o Docker

Clone o repositório:

```bash
git clone https://github.com/seu-usuario/springboot-jpa.git
```

Navegue até o diretório do projeto:

```bash
cd springboot-jpa
```
Execute o comando:

```bash
docker-compose up --build
```

## Documentação da API

A documentação dos endpoints estará disponível via Swagger em:

- [http://localhost:8080/swagger-ui.html](http://localhost:8080/swagger-ui.html)

## Contribuição

1. Faça um fork do projeto.  
2. Crie uma branch para sua feature:  
   ```bash
   git checkout -b feature/nova-feature
   ```
3. Commit suas mudanças:  
   ```bash
   git commit -m 'Adiciona nova feature'
   ```
4. Faça o push para a branch:  
   ```bash
   git push origin feature/nova-feature
   ```
5. Abra um Pull Request.


