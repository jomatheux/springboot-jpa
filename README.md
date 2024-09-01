# E-commerce API

---Este projeto é uma API de e-commerce desenvolvida com Spring Boot. A API permite gerenciar produtos, pedidos e usuários, utilizando PostgreSQL como banco de dados principal e H2 para testes.

## Tecnologias Utilizadas

- **Spring Boot**: Framework principal para a construção da aplicação.
- **Spring Data JPA**: Para a persistência e acesso aos dados.
- **Spring Web**: Para a criação dos endpoints REST.
- **PostgreSQL**: Banco de dados principal.
- **H2**: Banco de dados em memória para testes.

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
###Executando a Aplicação:
Clone o repositório:

git clone https://github.com/seu-usuario/ecommerce-api.git

Navegue até o diretório do projeto:

cd ecommerce-api

Compile e rode a aplicação:

mvn clean install
mvn spring-boot:run

###Documentação da API:
-a documentação dos endpoints estará disponível via Swagger em:

-http://localhost:8080/swagger-ui.html

###Contribuição:

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (git checkout -b feature/nova-feature).
3. Commit suas mudanças (git commit -m 'Adiciona nova feature').
4. Faça o push para a branch (git push origin feature/nova-feature).
5. Abra um Pull Request.

###Licença:

Este projeto está licenciado sob a Licença MIT. Veja o arquivo LICENSE para mais detalhes.

Espero que isso ajude! Se precisar de mais alguma coisa, é só avisar. 😊




