---
layout: post
title: 'Paranóia e internet'
tags:
- Internet
- Segurança Da Informação
- Seguranca Na Internet
---

![](https://cdn-images-1.medium.com/max/2560/1*PDzNEJnDA5_tf1I5qyW_QQ.jpeg)

Cada vez mais as empresas se preocupam em coletar dados de usuários na internet e vendê-los para empresas como Cambridge Analytica ou alguma outra que pague bem por essa massa bruta de dados de consumo, localização, fala e compras online que geramos diariamente. Cada viajem non Uber, cada busca ingênua no Google, cada email com um currículo anexado, cada corrente no WPP com GIF de gatos com glitter; enfim, cada (micro)ação que realizamos na internet deixa um rastro no provedor, na rede social, nos cookies e em todo o lugar. Hoje em dia é quase impossível controlar isso completamente porque as entranhas da nova web são feitas de modo que a navegação e utilização de uma internet com foco em privacidade seja quase impossível. As grandes redes sociais, as empresas modernas e com puffs coloridos na entrada do escritório, querem todas a mesma coisa: seus dados.Você pode ser o Snowden entregando o governo americano ou você pode ser uma pessoa que se preocupa com o Google sabendo quanto custou a pizza no iFood. Não importa. Privacidade (e o direito a ela) é algo fundamental. Não é porque eu não faço nada errado que eu não me importo em ter o governo e as empresas lendo meus emails pedindo emprego.Pensando nisso eu fiz um guia rápido e prático, que conversa com a minha página de indicações, dos serviços que eu acho que você deve evitar e aqueles que você deve usar caso se preocupe com privacidade.****

**Gerenciador de senhas**

Primeiro de tudo você deve evitar salvar as suas senhas no navegador diretamente. Qualquer vazamento do banco de dados do navegador (como o Google Chrome) pode expôr todas as suas senhas e cartões bancários. É cômodo usar o pagamento automático direto, claro, mas é melhor ainda não passar por qualquer problema com o cartão, senhas ou conta bancária.Segundo, o melhor a ser usado é um gerenciador de senhas. A ideia principal desses aplicativos é ter de se lembrar de apenas uma senha (a senha mestre do cofre que guarda todas as suas outras senhas) e de quebra poder gerar automaticamente senhas longas e complexas que vão impedir um ataque por força bruta/dicionário.Minha recomendação aqui é o 
[bitwarden](https://bitwarden.com/).

**Autenticação em dois passos (2FA, 2-factor-authentication)**

Use para tudo. Seja o código gerador por aplicativo (como os que temos em aplicações como Steam e Battle.net) ou mesmo por SMS (aliás, eu prefiro código por SMS porque nem sempre eu tenho internet mas eu sempre tenho um sinal telefônico que pode receber SMS).

**Redes sociais**

Não use.OK, é muito complicado não usar nenhuma rede social (todo mundo usa pelo menos uma, nem que seja o WPP). Mesmo com a assinatura do GDPR na Europa e da lei de acesso no Brasil, ainda assim, evite redes sociais e colocar informações pessoais demais nelas. Encare-as como grandes murais público de discussão e não como um espaço seguro para falar sobre aquele seu fetiche ou a sua coleção de 
hentais.

**Mensageiros**

Evite Telegram e WhatsApp. Apesar do primeiro se vender como um grande porto seguro para mensagens, ele não é criptografado de ponta-a-ponta por padrão (ou seja, ele é menos seguro do que o WhatsApp, teoricamente) e as suas mensagens podem ser lidas e os metadados delas podem ser usados como fonte de renda por um russo maluco qualquer.Se você quiser se comunicar com segurança a minha recomendação segue sendo o [Signal](https://signal.org/). Melhor comunicador criptografado que eu conheço até o momento.

**Computadores (de modo geral)**

Não logue em nenhuma conta pessoa em um computador público. Não guarde senhas no navegador ou usando a sua conta de grandes empresas como Apple, Google ou MS.Criptografe todo o seu disco rígido.

**VPN**

Se você é mais paranóico que o comum e quer usar uma VPN, eu recomendo fortemente a [ProtonVPN](https://protonvpn.com/), do mesmo grupo suíço que faz o ProtonMail.Uma VPN é uma camada a mais de segurança na sua navegação diária. Quando você usa uma VPN todo o tráfego entre você e essa rede privada é criptografado (ponta-a-ponta) fazendo com que a comunicação entre você e a internet seja muito mais seguro (ainda que sensivelmente mais lento na maioria dos casos).[TunnelBear](https://www.tunnelbear.com/)também é uma boa VPN, ainda que muito mais cara.

**Extensões**

[Privacy badger](https://www.eff.org/privacybadger), [HTTPS everywhere](https://www.eff.org/https-everywhere) e [uBlock Origin](https://chrome.google.com/webstore/detail/ublock-origin/cjpalhdlnbpafiamejdnhcphjbkeiagm?hl=pt-BR) são as essenciais para se aventurar nesse mundo de internet pirata que recolhem cada clique do seu mouse.Ainda recomendo os 
[containers de Facebook](https://addons.mozilla.org/pt-BR/firefox/addon/facebook-container/) (e Messenger e Instagram) que a Mozilla mantém para o Firefox.

**Nuvem**

Evite usar Dropbox, Google Drive, iCloud ou o One Drive. Qualquer um destes serviços pode, e provavelmente vai usar em algum momento, os seus dados como moeda de troca com governos, empresas e, principalmente, lhe transformará em um produto rentável (para eles).[Como solução você pode montar o seu próprio armazenamento em nuvem](https://sejalivre.org/criando-sua-propria-nuvem-com-owncloud-no-ubuntu-ou-debian/) com sincronização e espaço delimitado por você mesmo (e pelo seu bolso, HDD ainda custa caro). Mas é uma solução 
tech-savvypara maioria das pessoas, então, a minha recomendação recai no [NextCloud](https://nextcloud.com/)

**Email**

Não seu o Gmail. Nem o iCloud e muito menos o Outlook. Todos esses serviços, por melhores que sejam, podem ler seus dados e suas mensagens, tendo assim acesso às suas conversas, dados e informações sensíveis.Minha recomendação aqui, caso você não queira montar o seu próprio servidor de email, e usar o 
[ProtonMail](https://protonmail.com/), serviço de email criptografado e protegido (com duas senhas, uma para o serviço e outra pra caixa de entrada). Também é possível enviar emails protegidos com senhas (mas a senha precisa ser comunicada para o destinatário previamente).

**Buscadores**

Por favor use o [DuckDuckGo](https://duckduckgo.com/). O Google, além de lhe colocar em bolhas que lhe direcionam sempre para anúncios pagos, também lê e usa todas as informações e dados que você gera diariamente.Se você quiser se embrenhar mais no mundo da segurança e da privacidade, ainda pode usar o [Searx](https://asciimoo.github.io/searx/dev/install/installation.html#installation), um buscador instalado no seu próprio host, assim você tem controle total sobre como funciona e ainda pode fazer uma média ao ter o seu próprio buscador.
