---
layout: post
title: Todos somos piratas (ainda).
tags: []
---

Não bastasse toda a história envolvendo a trágica morte do programador [Aaron Swartz](https://www.wikiwand.com/en/Aaron_Swartz) e a cruzada contra o 
The Pirate Bay, a RIAA agora monitora repositório no GitHub à procura de possíveis ferramentas que possam ser usadas contra as suas propriedades intelectuais, removendo milhares de linhas código-fonte que foram escritas de maneira comunitária e colocando batalhões de advogados atrás de pessoas comuns.

A última bola da vez foi o youtube-dl, uma ferramenta que permite que se faça download de mídia (vídeo e áudio) de sites de streaming na internet. Essa ferramenta é usada dos mais variados modos, entre eles, a pirataria. Claro que a RIAA “catou milho” e pegou casos específicos que sustentassem a sua alegação de “infração de direitos autorais” no caso do youtube-dl e pediu a sua remoção do GitHub.

Seria mais um dos episódios catastróficos da eterna corrida de gato-e-rato da indústria arcaica e concentradora contra os novos modelos de distribuição e criação na internet e que, tal qual a hidra que ilustra a baía pirata, acabaria fomentando a criação de diversos outros forks do youtube-dl pelo mundo. Por sorte (nossa) o GitHub comprou a briga, analisou o código-fonte do repositório e percebeu que não é a “função principal” dele baixar matéria protegido por direitos autorais — alegação inicial da RIAA — e assim reabriu o repositório. Junto disso, foi criado o fundo de amparo aos desenvolvedores que, por ventura, se vejam frente-a-frente com a frenética máquina jurídica da RIAA (nos EUA) que leva centenas de pessoas à morte todo o ano.

Isso vai ajudar a pressionar o congresso americano a melhorar o famigerado DMCA e, principalmente, vai colocar um peso enorme nos países que estejam pensando em seguir os passos da internet segmentada dos EUA ao legislar sobre coisas tão efêmeras quanto um download na internet.

Abaixo a tradução de dois textos sobre o tema. O primeiro é a resposta de hoje do GitHub sobre todo o imbróglio envolvendo a RIAA e o youtube-dl. O segundo é um post do dia em que o repositório foi fechado e que ilustra um dos segmentos que mais usa — e depende — do arquivamento de vídeos da internet (o jornalismo).

****

##**Defendendo os desenvolvedores: o youtube-dl está de volta**

*Por Abby Vollmer*
Hoje reintegramos o [youtube-dl,](https://github.com/ytdl-org/youtube-dl) um projeto popular no GitHub, depois de recebermos 
[informações adicionais](https://github.com/github/dmca/blob/master/2020/11/2020-11-16-RIAA-reversal-effletter.pdf) sobre o projeto, o que nos permitiu reverter uma remoção baseada do Digital Millennium Copyright Act (DMCA).

No GitHub nossa prioridade é apoiar o código aberto e a comunidade de desenvolvedores. E, portanto, compartilhamos a frustração dos desenvolvedores com a remoção — especialmente porque este projeto tem muitos propósitos legítimos. Nossas ações foram orientadas por processos necessários para cumprir leis como o DMCA, que colocam plataformas como o GitHub e os desenvolvedores em uma situação difícil. E o nosso restabelecimento, com base em novas informações que mostraram que o projeto não estava contornando uma medida de proteção técnica (MPT), está alinhado com nossos valores de colocar os desenvolvedores em primeiro lugar. Sabemos que os desenvolvedores querem entender o que aconteceu aqui e como o GitHub defenderá os desenvolvedores e refinará seus processos sobre esses problemas.

Nesta postagem fornecemos respostas a perguntas comuns sobre o DMCA e por que o GitHub tratou esse caso da maneira que foi vista; descrevemos por que as alegações de evasão merecem tratamento especial e compartilhamos como estamos atualizando nossas políticas e lutando para melhorar a lei.

## Por que o GitHub processou essa remoção em primeiro lugar?

Como plataforma, devemos cumprir as leis — mesmo aquelas que não consideramos justas para os desenvolvedores. Como vimos, isso pode levar a situações em que o GitHub é obrigado a remover o código — mesmo que tenha uma infinidade de usos não infratores — se de fato for projetado para contornar uma MPT. Mas isso é extremamente raro.

Menos de dois por cento das remoções de DMCA que processamos são baseadas em reivindicações de evasão e, desses dois por cento, este foi um caso particularmente incomum.

**Reivindicações de remoção de DMCA com base em fraude são um problema crescente em todo o setor para desenvolvedores e que tem implicações de longo alcance. Veremos isso com mais detalhes, mas primeiro, aqui estão algumas informações básicas.**

## Alegações de evasão sob o DMCA

A maioria dos avisos de remoção que recebemos alegam violação de direitos autorais — que alguém usou seu trabalho protegido por direitos autorais (geralmente código de software) de uma forma que infringe seus direitos. Mas, como muitas pessoas notaram, o [aviso de remoção](https://github.com/github/dmca/pull/8122) do youtube-dl caiu em uma categoria mais incomum: anticircunvenção — uma alegação de que o código foi projetado para contornar medidas técnicas que controlam o acesso ou a cópia de material protegido por direitos autorais, em violação da [seção 1201 do DMCA](https://www.law.cornell.edu/uscode/text/17/1201) .

A Seção 1201 remonta ao final da década de 1990 e não antecipou as várias implicações que tem para o uso de software hoje. Como resultado, a Seção 1201 torna ilegal o uso ou distribuição de tecnologia (incluindo o código-fonte) que contorna as medidas técnicas que controlam o acesso ou a cópia de obras protegidas por direitos autorais, mesmo se essa tecnologia puder ser usada de uma forma que não seja violação de direitos autorais. A evasão foi a principal reclamação na derrubada do youtube-dl.

## Abordagem focada no desenvolvedor do GitHub para o DMCA

O GitHub lida com reivindicações DMCA de modo que possamos maximizar a proteção para desenvolvedores, bem como, [projetamos](https://github.blog/2014-10-16-a-better-dmca-process/) nossa [Política de remoção de DMCA](https://docs.github.com/en/free-pro-team@latest/github/site-policy/dmca-takedown-policy) com os desenvolvedores em mente. Quase todas as plataformas com conteúdo gerado pelo usuário aceitam e processam avisos de remoção de DMCA para cumprir a lei. Para o 
[GitHub](https://github.blog/2020-02-20-2019-transparency-report/#dmca-takedowns), muitos desses avisos vêm de desenvolvedores que desejam que façamos cumprir os termos de suas licenças de código aberto, por exemplo, quando alguém está usando seu código sem a devida atribuição exigida pela licença de código aberto que adotou. Aqui estão as maneiras como nossa abordagem protege os desenvolvedores:

***Dado o custo para os desenvolvedores de uma remoção indevida de código, garantimos que temos um aviso completo antes de tomarmos medidas.**
 Nós distinguimos entre o código que simplesmente pode ser usado de uma forma infratora e o código que é pré-configurado para ser usado de uma determinada maneira. Também reconhecemos que o código pode fornecer acesso a conteúdo protegido por direitos autorais sem violar a lei (por exemplo, uso justo). Em alguns casos, podemos manter um projeto porque o conteúdo identificado no aviso de remoção não está, de fato, infringindo ou contornando uma MPT que controla o acesso ou a cópia de obras protegidas por direitos autorais.

***Nosso processo acaba sendo mais eficaz e rígido que os processos que vemos usando a seção 1201.**
Exigimos que os reclamantes forneçam informações adicionais 
[específicas em relação ao ato de contornar direitos autorais](https://docs.github.com/en/free-pro-team@latest/github/site-policy/guide-to-submitting-a-dmca-takedown-notice#complaints-about-anti-circumvention-technology) e que descrevam as medidas técnicas e como o projeto foi elaborado para contorná-las, para que, somente assim, possamos considerar um aviso completo. A seguir explicamos como estamos fortalecendo ainda mais nosso processo.

***Sempre que processamos as remoções, notificamos todos os proprietários do repositório afetado sobre a remoção e damos a eles opções para contestá-la.**
 Permitimos que o proprietário do repositório faça alterações para abordar as alegações no aviso e, em muitos casos, podemos manter os projetos porque eles o fazem.

***Somos transparentes com a comunidade de desenvolvedores sobre os avisos de remoção de DMCA.**
 Sempre que processamos um aviso de remoção ou contranotificação com base no DMCA, publicamos o texto em nosso 
[repositório de DMCA](https://github.com/github/dmca), com a data em que o processamos (e não quando o recebemos), para que qualquer pessoa possa ver o aviso e a base de nossa ação.

Essas são todas as etapas que seguimos atualmente para ajudar os desenvolvedores, que vão além de nossas obrigações legais e práticas típicas do setor, embora ainda atendam aos requisitos do DMCA.

## youtube-dl

Conforme explicamos, a principal reivindicação na remoção do youtube-dl é a evasão. Embora tenhamos retirado o projeto inicialmente, entendemos que só porque o código pode ser usado para acessar obras protegidas por direitos autorais, não significa que também não pode ser usado para acessar obras de maneiras não infratoras. Também entendemos que o código deste projeto tem muitos propósitos legítimos, incluindo alterar velocidades de reprodução para acessibilidade, preservar evidências na luta pelos direitos humanos, ajudar jornalistas na verificação de fatos e baixar vídeos licenciados pelo 
Creative Commons ou de domínio público. Quando percebemos que é possível modificar um projeto para remover conteúdo supostamente infrator, damos aos proprietários a chance de corrigir os problemas antes de removermos o conteúdo. Caso contrário, eles sempre podem responder à notificação desabilitando o repositório e se oferecer para fazer alterações ou apresentar uma contranotificação.

Foi o que aconteceu neste caso. Primeiro, fomos capazes de [restabelecer](https://github.com/animelover1984/youtube-dl) um fork do youtube-dl depois que um dos proprietários do 
fork aplicou um patch com alterações em resposta ao aviso.

Então, depois de recebermos novas [informações](https://github.com/github/dmca/blob/master/2020/11/2020-11-16-RIAA-reversal-effletter.pdf) que mostraram que o projeto do youtube-dl não viola de fato as proibições anticircunvenção do DMCA, concluímos que as alegações não estabelecem uma violação da lei. Além disso, o mantenedor enviou um patch para o projeto abordando as alegações de violação com base em testes unitários que fazem referência a vídeos protegidos por direitos autorais. Com base em tudo isso, restabelecemos o projeto youtube-dl e forneceremos opções para restabelecer todos os seus 
forks.

## O que estamos mudando**

No futuro, vamos reformular nosso processo de revisão da seção 1201 que trata de reivindicações de forma a garantir que as seguintes etapas sejam concluídas antes que qualquer reivindicação de remoção seja processada:

*Cada reivindicação de remoção via seção 1201 precisa ser credível e será analisada por especialistas técnicos, incluindo, quando apropriado, especialistas independentes contratados pelo GitHub, para garantir que o projeto realmente contorne uma medida de proteção técnica conforme descrito na reivindicação.

*A reivindicação também será examinada cuidadosamente por especialistas jurídicos para garantir que reivindicações injustificadas ou reivindicações que se estendam além dos limites do DMCA sejam rejeitadas.

*No caso em que a reclamação é ambígua, erraremos do lado do desenvolvedor e deixaremos o repositório aberto, a menos que haja evidências claras de fraude ilegal.

*Caso a reivindicação seja considerada completa, legal e tecnicamente legítima por nossos especialistas, entraremos em contato com o proprietário do repositório e daremos a ele a chance de responder à reivindicação ou fazer alterações no repositório para evitar a remoção. Se eles não responderem, tentaremos entrar em contato com o proprietário do repositório novamente antes de tomar outras medidas.

*Apenas depois que essas etapas forem concluídas, um repositório será removido.

*Depois que um repositório for removido devido ao que parece ser uma reivindicação da seção 1201 válida e legítima, continuaremos a entrar em contato com o proprietário do repositório, se ele ainda não nos responder, a fim de fornecer a oportunidade de resolver a reivindicação e restaurar o repositório.

*Mesmo depois de um repositório ter sido retirado devido ao que parece ser uma declaração válida, iremos garantir que os proprietários do repositório possam exportar seus casos, PRs e outros dados do repositório que não contenham o código alegado de fraude, onde legalmente possível.

*Vamos formar nossa equipe de linha de frente para confiança e segurança para responder aos tíquetes do desenvolvedor em tais casos como uma prioridade, para que possamos garantir que as reivindicações sejam resolvidas rapidamente e os repositórios sejam prontamente reintegrados assim que as reivindicações forem resolvidas.

Tudo isso será feito por nossa própria conta e sem custo para os desenvolvedores que usam o GitHub. Acreditamos que isso representa o padrão ouro no tratamento de chamadas relacionadas a seção 1201 vidando primeiro o desenvolvedor. Como fazemos com todas as políticas do nosso site, documentaremos e abriremos o código-fonte desse processo para que outras empresas que hospedam códigos ou pacotes também possam utilizá-lo. E continuaremos a refinar e melhorar esse processo à medida que nossa experiência com esses tipos de casos comecem crescer, inevitavelmente.

## Fundo de defesa do desenvolvedor**

Osdesenvolvedores que são pessoalmente afetados por um aviso de remoção ou outra reivindicação legal contam com organizações sem fins lucrativos como o 
Software Freedom Law Center e a Electronic Frontier Foundation (EFF) para fornecer aconselhamento jurídico e suporte no caso de enfrentarem uma reivindicação de PI sob o DMCA ou de outra forma. Essas organizações fornecem suporte jurídico essencial para desenvolvedores que, de outra forma, estariam por conta própria, enfrentando corporações ou consórcios gigantes.

No entanto, os desenvolvedores que desejam reagir contra remoções injustificadas podem enfrentar o risco de assumir responsabilidades pessoais e custos de defesa legal. Para ajudá-los, o GitHub estabelecerá e doará US$1 milhão para um fundo de defesa do desenvolvedor para ajudar a proteger os desenvolvedores de código aberto no GitHub de reivindicações injustificadas de remoção com base na Seção 1201 do DMCA. Começaremos imediatamente a trabalhar com outros membros da comunidade para estabelecer este fundo e tomar outras medidas para proteger coletivamente os desenvolvedores e salvaguardar a colaboração dos desenvolvedores.

Se você deseja oferecer suporte a desenvolvedores que enfrentam desafios legais, considere também [oferecer](https://softwarefreedom.org/donate/) suporte ao [SFLC](https://softwarefreedom.org/donate/) e à [EFF](https://supporters.eff.org/) .

## Como estamos trabalhando para melhorar a lei

Não importa o que façamos para proteger os direitos do desenvolvedor, ainda devemos trabalhar dentro dos limites da lei. E os limites atuais do DMCA estão prejudicando os desenvolvedores. Uma maneira de resolver os problemas com o DMCA é trabalhar para [melhorar a própria lei](https://docs.github.com/en/free-pro-team@latest/github/site-policy/dmca-takedown-policy#learn-more-and-speak-up) — e evitar que leis ainda piores sejam promulgadas em todo o mundo. Fomos bem-sucedidos em um esforço de vários anos para impedir que a diretiva de direitos autorais da UE [exigisse filtros de upload](https://github.blog/2018-03-14-eu-proposal-upload-filters-code/) para o desenvolvimento de software, e estamos tirando lições dessa luta para a nossa luta [com os EUA, à](https://github.blog/2019-04-17-github-shares-lessons-learned-from-eu-copyright-directive-at-us-dmca-roundtable/) medida que uma reforma mais ampla do DMCA começa a ser discutida.

Também defendemos especificamente as disposições anti-evasão do DMCA para promover a liberdade dos desenvolvedores de criar ferramentas 
[socialmente benéficas](https://freedom.press/news/riaa-github-youtube-dl-journalist-tool/), como o youtube-dl. No momento, o US Copyright Office está conduzindo seu oitavo processo de revisão trienal das exceções às disposições anti-evasão da Seção 1201. Falaremos mais sobre isso em breve, mas se você acredita, como nós, que o DMCA é excessivamente restritivo em suas disposições anti-evasão e deseja mudar isso, você também pode [entrar em contato com](https://www.copyright.gov/1201/2021/) o Copyright Office diretamente.

Teremos mais a dizer sobre como você pode se juntar à luta para tornar as leis de direitos autorais mais amigáveis para o desenvolvedor em breve — fique ligado.

****

##  indústria da música forçou a derrubada de uma ferramenta amplamente usada pelo jornalismo.**

[Parker Higgins](https://freedom.press/people/parker-higgins/) | Diretor Jurídico| 26 de outubro de 2020

O popular projeto de software livre “youtube-dl” foi removido do Github na sexta-feira após um 
[aviso legal da Recording Industry Association of America (RIAA)](https://github.com/github/dmca/blob/master/2020/10/2020-10-23-RIAA.md) alegando que ele viola a lei de direitos autorais dos EUA. De acordo com a RIAA, o “propósito claro” da ferramenta inclui reproduzir e distribuir “videoclipes e gravações de som sem autorização”.

De fato, o [youtube-dl](https://youtube-dl.org/) é uma poderosa ferramenta de mídia com propósito geral que permite aos usuários fazer cópias locais de diversos tipos de mídia de uma ampla variedade de sites. Essa versatilidade garantiu a ele um lugar nos kits de ferramentas de muitos repórteres, desenvolvedores que trabalham em redações e arquivistas. Por enquanto, o código permanece disponível para download por meio do próprio site do youtube-dl, mas a interrupção de seu hub de desenvolvimento e do barulhento processo que a RIAA coloca no projeto, põe em risco o futuro do software e de toda uma miríade de fluxos de trabalho jornalísticos que dependem dele.

Inúmeros repórteres disseram à  Freedom of the Press Foundation que eles se apoiam no trabalho da equipe do youtube-dl quando fazem reportagens sobre conteúdo extremista ou polêmico. Øyvind Bye Skille, um jornalista que usou o youtube-dl na Norwegian Broadcasting Corporation, que atua como verificador de fatos para a [Faktisk.no](https://www.faktisk.no/), disse:

>“Eu também usei para garantir uma cópia de boa qualidade de conteúdo em vídeo no Youtube, Twitter, etc., caso o conteúdo seja removido quando começarmos a reportá-lo”.

Skille apontou para um caso específico de vídeos relacionados ao assassinato terrorista de uma mulher norueguesa no Marrocos:

>“Baixar o conteúdo não significa necessariamente que iremos publicá-lo novamente, mas muitas vezes é importante protegê-lo para documentação e futuras investigações internas”.

Justin Ling, um repórter investigativo que frequentemente cobre segurança e extremismo para veículos como o 
Foreign Policy e a VICE News, descreveu como ele usa a ferramenta para lhe ajudar nos desafios que ele enfrenta ao fazer reportagens sobre o surgimento de teorias da conspiração, uma vez que essas postagens enfrentam remoção e proibição. Em suas palavras:

>“O Youtube tem sido um centro crucial para a organização e propaganda do QAnon: Muitas vezes usei o youtube-dl para armazenar esses vídeos para meu próprio benefício. O que também é bom, já que o Youtube frequentemente, e sem aviso, remove em massa esse tipo de conteúdo, o que pode ser prejudicial para aqueles de nós que usam essas contas do Youtube para rastrear a disseminação dessas conspirações. ”

Em outros casos, cópias locais são necessárias para conduzir uma análise mais rigorosa do que é possível online, e os jornalistas recorrem ao youtube-dl para obter a cópia do vídeo da mais alta qualidade disponível. John Bolger, desenvolvedor de software e administrador de sistemas que trabalha com jornalismo de dados, contou a experiência de relatar 
[uma investigação premiada](https://hunterenvoy.net/articles/nypd-baruch) como editor de notícias do jornal da faculdade, o 
Hunter Envoy, em 2012. Nessa história, o Envoy usou evidências de vídeo para contradizer relatórios oficiais que negavam a presença da polícia em um protesto do 
Ocupy Wall Street no campus da universidade.

>“Para chegar às minhas conclusões sobre o envolvimento da política de NY tive que assistir a este vídeo centenas de vezes — em câmera lenta, ampliei e repeti momentos críticos — de forma a analisar o vídeo, assim, tive que assistir e manipular esse material de maneiras que simplesmente não são possíveis usando a interface da web”.

O Youtube-dl é um método eficaz para baixar o vídeo na resolução máxima possível.

Jake, membro do [grupo de transparência no Lucy Parsons Labs](https://lucyparsonslabs.com/) 
[que tem sede em Chicago](https://lucyparsonslabs.com/), usa o youtube-dl para salvar cópias de incidentes registrados envolvendo o uso de força policial ou comportamento abusivo. Depois de copiados, os vídeos podem ser armazenados em um arquivo ou modificados antes da publicação, por exemplo, desfocando os rostos de espectadores ou vítimas. O seu uso é, majoritariamente, para proteger as pessoas:

>“Às vezes conseguimos olhar mais de perto os frames individuais após o download com o youtube-dl para identificar os policiais quando eles não estão usando seus crachás intencionalmente ou ofuscando-os com coisas para evitar a responsabilização”.

Um pesquisador sobre a desinformação disse à Freedom of the Press Foundation que usa o youtube-dl para criar uma um modelo de aprendizado de máquina para fazer a checagem automatizada de fatos em tempo real.

>“Embora nossos sistemas de produção sejam projetados para serem usados em streams de vídeo ao vivo, não é viável testar em vídeo ao vivo. O Youtube-dl nos permite aumentar muito a velocidade do desenvolvimento de nossa pesquisa e nos permite realmente testar nosso software no dia-a-dia, não apenas quando os políticos fazem um discurso”.

Da mesma forma, vários repórteres descreveram o uso do youtube-dl para fluxos de trabalho básicos, como transcrever vídeos que estão cobrindo. Jeremy Gray, um cientista de dados do The Globe and Mail, descreveu uma ferramenta para o Slack que fornece ele aos jornalistas para permitir que eles transcrevam automaticamente suas próprias entrevistas e, até sexta-feira, eles transcreviam vídeos do Youtube a partir de uma URL. “Essa ferramenta usa o youtube-dl, e agora essa parte está quebrada”. Outro jornalista, que trabalha em uma “pequena redação de mídia pública”, descreveu uma situação comum em que um repórter precisa “de uma gravação de uma reunião pública para uma história mas está dentro do prazo e não quer o incômodo de gravar as partes que quer em tempo real ou mesmo quer o arquivo completo para algo como a transcrição automática”.

Esse mesmo jornalista descreveu como o youtube-dl ajuda a enfrentar o desafio de incorporar conteúdo gerado pelo usuário no ar. Imediatamente após um terremoto, sua redação começou uma cobertura contínua expansiva e procurou incluir fotos e vídeos que os moradores locais haviam gravado. Ele cita um exemplo:

>“Somos escrupulosos em garantir que obtemos permissão (e garantir que a pessoa que concede realmente possui os direitos autorais), mas especialmente logo após um terremoto, pedir às pessoas que enviem o vídeo para nós especificamente pode ser algo muito mais lento do que apenas permitir que o usemos (se eles tiverem uma gravação, o que provavelmente não acontece em uma transmissão ao vivo), então, muitas vezes, depois de obter a permissão, eu simplesmente baixava direto da mídia social para transcodificar para a TV”.

Esse caso de uso é comum. Os repórteres frequentemente precisam de cópias de alta fidelidade de trilhas de vídeo ou áudio para publicação ou reportagens. Ling, um repórter freelance sobre segurança, disse que também usa o youtube-dl para “obter a melhor qualidade de áudio” ao baixar cópias de conferências de imprensa ou eventos de notícias “para obter trechos de áudio para uso em podcasts ou trabalho de rádio”.

Finalmente, vários repórteres descreveram o uso do youtube-dl para baixar cópias de seus próprios trabalhos. A Freedom of the Press Foundation já trabalhou anteriormente para 
[ajudar os redatores a preservarem as cópias do portfólio de seus artigos](https://freedom.press/news/preserving-threatened-archives-splinter-and-deadspin/) e 
[para ajudar os arquivos completos de notícias a permanecerem online](https://freedom.press/news/archiving-alternative-press-threatened-wealthy-buyers/) quando o próprio meio de comunicação está sob ameaça. O Youtube-dl também desempenha um papel importante nesse ecossistema.

O Github não comentou publicamente sobre a remoção de um de seus repositórios mais populares. Claramente, o youtube-dl em particular e a capacidade de baixar e manipular vídeos online em geral são uma parte importante do trabalho do jornalismo e da alfabetização midiática contemporânea. Dado o importante papel que o youtube-dl desempenha em relatórios e arquivamento de interesse público, e os esforços da RIAA para remover a ferramenta representam um alcance extraordinário e a posterior possibilidade de consequências imprevistas. Instamos a RIAA a reconsiderar sua ameaça e o Github a restabelecer a conta por completo.
