# Projeto CloudWalk Challenge

## Comentários do projeto

Muito legal realizar esse desafio, aprendi alguns temas sobre o mercado de adquirente além de relembrar um pouco sobre MySQL.

---

## Instalação do projeto

Para ter acesso ao projeto você pode seguir o passo abaixo.

1. Clone o repositório
  * `git@github.com:eullerbraz/cloudwalk-challenge.git`.
  * Entre na pasta do repositório que você acabou de clonar:
    * `cd cloudwalk-challenge`

2. Restaure o dump com o auxílio de alguma ferramenta SQL.

3. Utiliza as main_queries para pegar os dados desejados,

---

## Respostas

1. Explain the money flow and the information flow in the acquirer market and the role of the main players.
  
O fluxo de informações segue o seguinte caminho: Após o lojista estar devidamente cadastrado em um empresa adquirente, ele já estará habilitado para receber transações com cartão de crédito ou débito. Quando o cliente insere o cartão e a senha (ou utiliza aproximação), as informações do cartão são transferidas para a empresa adquirente, está possui o papel de capturar esse pagamento, liquidar a transação caso tudo esteja correto e repassar as infomações para as bandeiras de cartões. As bandeiras são responsáveis pela segurança da transação, além de cuidar do regulamento dos cartões e repassar as informações para os bancos. Os bancos são responsáveis por autorizar ou negar a transação, de acordo com o saldo ou crédito do cliente. 


2. Explain the difference between acquirer, sub-acquirer and payment gateway and how the flow explained in question 1 changes for these players.

Subadquirente são intermediárias entre as adquirentes e a loja, elas geralmente são usadas por pequenos negócios por ter uma complexidade de uso menor. A loja usa a subaquirente para fazer a cobrança, a subadquirente se comunica com a adquirente que verifica com o banco os saldo e a segurança da transação. A loja pode também utilizar Gateways de pagamento para fazer a cobrança, estes atuam processando as informações no momento do checkout da compra. Ele também se comunica com a adquirente para checar as informações. Os Gateways também possibilitam a loja visualizar todas as etapas do processo, além de possibilitar ao cliente fazer checkout sem redirecionamentos a outros sites.


3. Explain what KYC (Know Your Customer) is and how it's important to the company and the entire payment industry.

Know Your Customer é uma estratégia para segurança do negócio. Essa estratégia é regida por algumas regras que definem que a instituição deve conhecer a fundo seu cliente. Algumas informações financeiras, por exemplo, são crucias para a identificação de transações suspeitas. Além disso algumas informações do cliente ajudam a identificar exatamente qual o cliente está realizando determinada transação. 

---

## Conclusão

1. Was there any negative number? If so, why do you think that happened?

Não encontrei nenhum número negativo, porém encontrei alguns números muito grandes no tempo de aprovação. Acredito que isso ocorreu porque alguns clientes cadastraram-se mais de uma vez, gerando dois status idênticos na tabela de status.

