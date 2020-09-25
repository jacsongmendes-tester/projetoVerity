Feature: Cenario do Desafio Verity
   
    Background: Acesso o home page 
        Given que eu acessei a home page da Verity 
        @TC-001
        Scenario Outline: Submeter informações para Contato        
        When eu clicar na opção de menu "Contato"
        And preencher os campos Nome Completo, Empresa, Email, Fone e Mensagem
            |  Nome  | Empresa   | Email   | Fone   | Mensagem   |
            | <nome> | <empresa> | <email> | <fone> | <mensagem> |
        And clicar no botão Enviar
        Then o site irá registrar o envio apresentando uma mensagem de que a mensagem foi enviada com sucesso.
        Examples:
        | nome                | empresa | email                     | fone          | mensagem                              |
        | Jacson Gomes Mendes | Verity  | jacson.g.mendes@gmail.com | 71993064176   | Mensagem gerada automatica para teste |      
  