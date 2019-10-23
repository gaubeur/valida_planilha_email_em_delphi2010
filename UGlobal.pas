 unit UGlobal;

interface

uses
Classes, SqlExpr, DBXCommon;


var
// tptela => 1 [ inclusao ] 2 [ alteracao ] 3 [ consultar ] 4 [ exclusao ]
// fin_statustitcobr => 0 [ em aberto ] 1 [ enviado ao banco ] 2 [ aceita pelo banco ] 3 [ baixado por liquidacao ] 4 [ solicitado baixa ] 5 [ baixa aceita ] 6 [ baixa por prazo excedido ] 7 [ não enviado ao banco por flag em contrato ]
// SERIE => M [ MANUTENCAO ] E [ ENTRADA ] P [ MANUTENÇÃO DE BENEFICIARIO ]
// tpagendamento => 1 ( baixa atendimento ) | tpagendamento => 2 ( inclusao de atendimento )
// auxtpnavegacaoagendamento => 0 ( direto ) | auxtpnavegacaoagendamento => 1 ( via pendencia ) | auxtpnavegacaoagendamento => 2 ( via general )
// auxnavtela => 1 ( cadastro cliente )

// estes produtos são clientes preferenciais e porem estão sobre o critério da pontualidade
// e a manutenção é gerada pelo contrato preferencial
// 225, 226, 252, 253, 273, 290, 292, 516, 519, 526


// VALORES DOS PRODUTOS PARA O PERFIL DE FORMA DE REAJUSTE
// PRD_TIPOCORRECAO = 'A' => REAJUSTE ANUAL
// PRD_TIPOCORRECAO = 'M' => REAJUSTE MENSAL
// PRD_TIPOCORRECAO = 'P' => REAJUSTE PELO VALOR DO PRODUTO NA TABELA DE PREÇO


// faixa de codigo de baixa
//84317912;84328041;10129
//85078504;85097751;19247    => em uso para o acordo  em 29/11/2016
//85236784;85247501;10717    => em uso para manutencao em 16/01/2017 [ ja utilizado ]
//86756784;86767751;10967    => parado em 22/04/2017 ( ultimo numero : 86767069 )reiniciado em 08/05/2017 - em uso para manutencao a partir de 13/03/2017 ( atual ) / parado em 11/04/2017 ( parou no numero 86761585 )
//87087784;87098041;10257    => em uso a partir de 23/11/2017 ****
//87307754;87327751;19997    => em uso a partir de 22/05/2017 | em uso para manutencao a partir de 11/04/2017 ( parado no numero 87324979 )
//87358913;87377750;18839    => em uso a partir de 19/06/2017
//87477784;87488041;10257
//88298912;88318041;19129    => esta faixa inicia em 19/10 para manutencao novembro com sinal de vida
//88318504;88338041;19537
//88418044;88438041;19997
//89068504;89086033;17529
//89092512;89108041;15529    => usado para gerar o sem sinal de vida do mes de novembro de 2017
//89118044;89137696;19652    => faixa já utilizada
//89217784;89228041;10257
//89297784;89308041;10257
//89457784;89468041;10257
//90888912;90907751;18839
//91187912;91198041;10129
//92437784;92448041;10257
//93038912;93058041;19129
//93338054;93358041;19987
//93556912;93586751;29839
//93706912;93726751;19839
//93868501;93886200;17699
//93986784;93998041;11257
//94227784;94238041;10257
//94267784;94278041;10257
//94398912;94417751;18839
//96338054;96356751;18697
//96638912;96657751;18839
//97907784;97918041;10257
//98748912;98767201;18289
//98918054;98947200;29146
//99698054;99716751;18697




tipoage:array[1..20] of integer;
Descrtipoage:array[1..20] of string;
Assuntoage:array[1..30] of integer;
DescrAssuntoage:array[1..30] of string;
Situacaoage:array[1..20] of integer;
DescrSituacaoage:array[1..20] of string;
motivoage:array[1..20] of integer;
Descrmotivoage:array[1..20] of string;

tabtelefone:array[1..10] of string;
tabcarteira:array[1..100] of integer;
tabmovstatusoriginal:array[1..100] of integer;
tabmovstatusanterior:array[1..100] of integer;
tabmovstatusatual:array[1..100] of integer;
tabtotmovstatusoriginal:array[1..100] of integer;
tabtotmovstatusanterior:array[1..100] of integer;
tabtotmovstatusatual:array[1..100] of integer;
tabcadprocorigem:array[1..100] of integer;
tabcadprocdestino:array[1..100] of integer;
tabcodbanco:array[1..100] of string;
taborigem:array[1..200] of integer;
tabletra:array[1..10] of string;
tabcaractprd:array[1..10] of string;
tabopcaopagto:array[1..100] of integer;
tabopcaopagtoTipo:array[1..100] of string;
tabsitpagto:array[1..100] of string;
tabprocesso:array[1..100] of integer;
auxtabinstr:array[1..20] of string;
auxtabinstrmsg:array[1..20] of string;
auxmesext:array[1..12] of string;
motivocarencia:array[1..50] of integer;
tabqtdproduto:array[1..1000] of integer;
tabvlrproduto:array[1..1000] of double;
motivoexclusao:array[1..50] of integer;
Grupo:array[1..99] of string;
PossuiComissao:array[1..99] of string;
cargonivel:array[1..99] of integer;
codnivel:array[1..99] of integer;
tabmotivorejeicaocartocredito:array[1..150] of string;
tabmes:array[1..12] of string;

nivelvendas:array[1..10] of integer;
superiorvendas:array[1..10] of integer;
equipevendas:array[1..10] of integer;
nivelpesquisa:array[1..10] of integer;
superiorpesquisa:array[1..10] of integer;
equipepesquisa:array[1..10] of integer;


nivelvendasgaveta:array[1..10] of integer;
superiorvendasgaveta:array[1..10] of integer;
equipevendasgaveta:array[1..10] of integer;
nivelpesquisagaveta:array[1..10] of integer;
superiorpesquisagaveta:array[1..10] of integer;
equipepesquisagaveta:array[1..10] of integer;


vlrcomissaovend:array[1..10] of double;
vlrcomissaopesq:array[1..10] of double;

vlrcomissaovendgaveta:array[1..10] of double;
vlrcomissaopesqgaveta:array[1..10] of double;

codsupervisor:array[1..99] of integer;
Situacao:array[1..10] of string;
supervisor:array[1..1000] of integer;
prestadorservico:array[1..1000] of integer;
atendente:array[1..10000] of integer;
vendedor:array[1..2000] of integer;
tipo:array[1..9] of string;
tpvenda:array[1..20] of integer;
tpvendagerafinanceiro:array[1..20] of string;
tpprd:array[1..9] of string;
tpempreendimento:array[1..100] of integer;
bcocontador:array[1..100] of integer;
tpmf:array[1..9] of string;
motivo:array[1..999] of integer;
codatd:array[1..1000] of integer;
auxtabpreco:array[1..100] of string;
tpparc:array[1..100] of string;
desctpparc:array[1..100] of string;
nrparc:array[1..100] of integer;
dtvenctoparc:array[1..100] of tdatetime;
dtini:array[1..100] of tdatetime;
dtfim:array[1..100] of tdatetime;
dtnasc:array[1..100] of tdatetime;
valparc:array[1..100] of double;
nmatd:array[1..1000] of string;
qtdctr:array[1..1000] of integer;
vlrmanut:array[1..1000] of double;
vlrreceb:array[1..1000] of double;
codprd:array[1..1000] of integer;
codprdref:array[1..1000] of integer;
linhaprd:array[1..1000] of string;
dac:array[1..50] of integer;
listaculj:array[1..60] of string;
listacodbxa:array[1..60] of string;
proini:array[1..1000] of integer;
profin:array[1..1000] of integer;
usucod:array[1..1000] of integer;
usucodOperador:array[1..10000] of integer;
auxnmbeneficiario:array[1..100] of string;
usucodtmkt:array[1..1000] of integer;
codliq:array[1..99] of integer;
auxcodbxa:array[1..120] of string;
nmarq:array[1..30] of string;
culjperformance:array[1..200000] of string;
grupoperformance:array[1..200000] of string;
nivelperformance:array[1..200000] of integer;
origem:array[1..10000] of string;
ocor_campanha:array[1..100] of string;
ocor_descricao:array[1..100] of string;
acm_ocorrencia:array[1..100] of integer;
campanha:array[1..10000] of string;
campanhamestre:array[1..10000] of integer;
erro:array[1..10000] of string;
listabeneficiario:array[1..100] of integer;
equipecomissao:array[1..100] of integer;
tabusuario:array[1..5000] of integer;
tabsimnao:array[1..10] of string;

//
auxatendente:array[1..100] of string;
auxregatendente:array[1..100] of integer;
auxvlratendente:array[1..100] of double;
//
auxvendgaveta:array[1..1000] of string;
auxregvendgaveta:array[1..1000] of integer;
auxvlrvendgaveta:array[1..1000] of double;


//
parcacordo:array[1..120] of string;
parcacordo1:array[1..120] of string;
dtacordo:array[1..120] of string;
vlracordo:array[1..120] of double;
vlracordoaux:array[1..120] of double;
vlrparcacordoaux:array[1..120] of double;
nracordo:array[1..120] of integer;
tpacordo:array[1..120] of string;
tpprdaux:array[1..100] of string;
usuxprograma:array[1..2000] of integer;
tpusuxprograma:array[1..2000] of integer;
tpusuxprogramaatd:array[1..2000] of integer;
tpusuxprograma1:array[1..2000] of integer;
nmprograma:array[1..2000] of string;
nmprogramaatd:array[1..2000] of string;
tabindiceigpm:array[1..12] of double;

nmprograma1:array[1..2000] of string;
//
parcacordocomissao:array[1..6,1..120] of string;
vlracordocomissaovend:array[1..6,1..120] of double;
vlracordocomissaovendaux:array[1..6,1..120] of double;
vlracordocomissaopesq:array[1..6,1..120] of double;
vlracordocomissaopesqaux:array[1..6,1..120] of double;
vlrauxcomissaovend:array[1..6,1..120] of double;
vlrauxcomissaopesq:array[1..6,1..120] of double;
vlrcomissaoapurada:array[1..120] of double;
vlrparcacordo:array[1..120] of double;
vlrparcacordoacm:array[1..120] of double;
vlrauxcomissao:array[1..120] of double;
vlrauxcomissao1:array[1..120] of double;
//
ctareceb_produto:array[1..100] of string;
ctareceb_parcela:array[1..100] of integer;
ctareceb_valor1:array[1..100] of double;
ctareceb_valor2:array[1..100] of double;
ctareceb_valoracordo:array[1..100] of double;
ctareceb_valorprincipal:array[1..100] of double;
//
codempcob:array[1..20] of integer;
codusucob:array[1..20] of integer;
//
nragendamento,parcodbxa,parnumdest,auxnrreg1,auxreg,auxreg1,auxmes,auxcodprod,auxcodprod1,auxcodprodgav,auxcodprodref,auxitem,auxusucod,auxclicod,auxcodope,ind,indaux,indstr,flagexiste,flagexisteprd,flagunica,flagexecucao,flagcampo,tpmodulo,tptela,tptela9,auxsepcod,flagtab,flagparc,indcarga,flagcancelarcontrato:integer;
auxstrempresa,auxstrfixo,auxmes1,auxdia,auxano,auxnoscon,auxnmatd,auxdatastr,auxstr,auxstr1,auxstr2,auxstr3,auxdescricao,auxtipo,auxcodter,auxcpfcnpj,auxuf,auxmensagem,auxgrupo,auxgrupo1,auxdesprod,auxsenha,auxusuario,auxnrreg,auxdatastrigpm,auxcpffolhapagamento:string;
auxdata1parc,auxdtcorte,auxnovadata,auxdatat,auxdata,auxdataadm,auxdataadmpesq,auxdtparc,auxdtinicio,auxdtfim,auxdtinicioatual,auxdtfimatual,auxdatactr:tdatetime;
auxdiaw,auxdiaww,dia,auxmesw,mes,auxanow,ano,auxanoww:word;
nrlote,flaglote,indpar,indpar1,indpar2,indpar3,flaginicio,flagerro,dac1,auxcodempreendimento,auxid,flagesc,auxorigem,flagerrocancelamento:integer;
indacerto,ind1,tpplanilha,opesol,tpexclusao,auxvendt,auxvendg,auxerrobanco,auxerroempresa,indexador:integer;
flagtemzerovend,flagtemzerovend2,flagtemzerovend3,flagtemzerovend4,flagtemzerovend5,flagtemzerovend6:integer;
flagtemzeropesq,flagtemzeropesq2,flagtemzeropesq3,flagtemzeropesq4,flagtemzeropesq5,flagtemzeropesq6:integer;
f,f1,f2:textfile;
nrdia,auxjurini,auxjurfin,auxmulini,auxmulfin,auxdescmin,auxdescmax,vlrtottitulo,vlrtotprincipal,vlrtotjuro,vlrtottarifa,auxvlrmultamin,auxvlrmultamax,acmvalor,auxvlrminparcclipref,auxvlrjurosacumulado:double;
auxstrcpfcnpj,strind,buffer,auxbuffer1,auxbuffer2,auxbuffer3,auxbuffer4,FlagPrioridadeLeitura:string;
auxpossuicomissao,auxnrparc,auxnrparc1,auxculj,auxgaveta,auxregtp,auxregtpprd,auxreggrp,auxregsit:string;
auxcodproduto,qtddias,qtddias1,auxregempreendimento,linha,pagina,flagachou,flagachou1,flagachou2,auxregmot,indparc:integer;
auxferdia,auxfermes,auxferiado,arquivo,arquivoD,auxnomesepultado,auxfaixainicial,auxfaixafinal:string;
auxoperatd,auxfaixausu,auxregfaixausu,auxqtdcontrato,auxqtdtotcontrato,paratend,ind9,flagarquivo,flagheader:integer;
auxvlrconv,auxvlrmanut,auxvlrtotmanut,auxvlrreceb,auxvlrtotreceb,auxvlrparc,auxvalor,auxvalor1,auxvalor2,auxvalor3,auxvlrliq,auxvalor9:double;
vlrtotnegativado:double;
auxstrdtinicio,auxstrdtfim,auxnome,auxendereco,auxendereco2,auxcidade,auxrg,auxlocal:string;
auxbcocod,auxbcoagencia,auxbcodcagencia,auxbcoconta,auxbcodcconta,auxempreendimentocod,auxregsup,auxcontsup,paramcodrel:integer;
auxlinhaprd,auxbcotpprdcod,strbcocod,strbcoagencia,strbcoconta,strlinhaprd,strempreendimento:string;
telaperformance,tpaquisicao,qtdegav,qtdeoss,qtdegav1,qtdegav2,qtdeoss1,qtdeoss2,qtdegavreg,qtdeossreg,indposicao,indposicao1,indinicio:integer;
auxitem1,auxvlrcor,auxvlrtottit,auxvlrtotcor,auxvlrtotmultamin,auxvlrtotmultamax,auxvlrtotjurosmin,auxvlrtotjurosmax:double;
//
auxcodrem,operatd,culjatd,gavetaatd,clienteatd,situacaoatd,grupoatd,auxtelefone,auxbuffercb1,buffer1,auxbuffercb2,auxtelefonecorreto:string;
//
prorrogacodbxa,auxgavetaant,nosnumorig,nosnumdest,auxstrmesano,auxflagnegativado:string;
prorrogadtvencto,dtprorroga:tdatetime;
primeirovalor,segundovalor,indaux1,auxusuario1,tprel,auxreg2,auxsep,auxbenef,flagsubstituicao,flagexclusao,qtdclipref:integer;
//
auxnivelcod,auxnivelcargo,auxmotcod,qtddiasentrada,qtddiasparcela,qtdparcatraso,qtdpagamento,contador,auxcodsaccart,auxdac:integer;
//
vlrminparcgav,vlrresiduo,vlrtotaber,vlrtotcanc,vlrtotpagto,vlrclipref,tabcorrecao,auxvalorvida:double;
//
auxterexiste,auxgavexiste,auxmanexiste,auxoutexiste,auxcliprefexiste,auxgruponivel,strcodcliente:string;
auxterqtdvcto,auxterqtdatra,auxterqtdpagto,auxgavqtdvcto,auxgavqtdatra,auxgavqtdpagto,auxmanqtdvcto,auxmanqtdatra,auxmanqtdpagto,auxoutqtdvcto,auxoutqtdatra,auxoutqtdpagto,auxcliprefqtdvcto,auxcliprefqtdatra,auxcliprefqtdpagto:integer;
percentual,auxtervalvcto,auxtervalatra,auxtervalpagto,auxgavvalvcto,auxgavvalatra,auxgavvalpagto,auxmanvalvcto,auxmanvalatra,auxmanvalpagto,auxoutvalvcto,auxoutvalatra,auxoutvalpagto,auxcliprefvalvcto,auxcliprefvalatra,auxcliprefvalpagto:double;
percmultagav:double;
//
vlrter1,vlrter2,vlrter3,vlrgaveta1,vlrgaveta2,vlrgaveta3,vlrmanutencao1,vlrmanutencao2,vlrmanutencao3,vlroutro1,vlroutro2,vlroutro3,vlrclipref1,vlrclipref2,vlrclipref3,vlrdescontoclipref,vlrdescontoadesaoclipref:double;
auxvlrter1,auxvlrter2,auxvlrter3,auxvlrgaveta1,auxvlrgaveta2,auxvlrgaveta3,auxvlrmanutencao1,auxvlrmanutencao2,auxvlrmanutencao3,auxvlroutro1,auxvlroutro2,auxvlroutro3,auxvlrclipref1,auxvlrclipref2,auxvlrclipref3:double;
auxvlracordo, auxvlrprincipal : double;
vlrter1tot,vlrter2tot,vlrter3tot,vlrgaveta1tot,vlrgaveta2tot,vlrgaveta3tot,vlrmanutencao1tot,vlrmanutencao2tot,vlrmanutencao3tot,vlroutro1tot,vlroutro2tot,vlroutro3tot,vlrclipref1tot,vlrclipref2tot,vlrclipref3tot,auxvalorcomdesc:double;
//
auxcodserie,auxusunome,auxcodorigem,auxnivel1,auxcodgrupo,auxsituacao,auxcodcampanha,auxcodcampanha1,auxcodproxcampanha,auxcodocorrencia,auxgrupocampanha:string;
auxcodtpvenda,flagentrada1,flagentrada2,flagentrada3,flagentrada4,flagparcela,indarquivo,indregistro,auxcodtabcom,auxusucomissao,auxfunc:integer;
nrcampanha,ageaut,agepro,operadormkt,campanhamkt,campanhamestremkt,auxhoras,ocorstatus,nrocor,auxdddtelramal,auxcampanhadistribuicao,auxincluiprospect,auxcarteira:string;
acmtotprospectcliente,acmtotprospectclientedistribuir,acmtotusuario,horasaut,diasaut,nrprocli,tpcampanha,tpsitcliente,tpusucod,tpconsulta:integer;
auxhoraini,auxhorafin,auxhoraint,auxhora,quintodiautil,nrdata,nrhora:tdatetime;
auxcodlocalatd,auxproxcampanha,tipousu,auxnosnumorig,auxnosnumdest,auxnosnumorig1,auxnosnumdest1,auxstrmotivo:string;
//
flagcomissao,auxstrvlr,auxusuariotxt,auxelegtppesquisa,auxelegtpvendas,auxelegpesquisa,auxelegvendas:string;
auxcodcampmestre,flag9,parcpaga,parcaberto,auxparlote,loteaberto,auxqtdeparcela,auxcodmotivo,auxmotivo,auxcodempcob,auxcodusucob,auxcodprg,auxclicodautomatico,auxgrupocarteira:integer;
auxregprestadorservico,posini,posfin,qtdpos,flagchegada,flagatendimento,flagexiste1,diareemissao,flagok,auxcod,auxcodsaccarteira,auxcodSacVendas:integer;
ocor_campanhaagenda,ocor_campanhaagendaie,criausuario,auxversao,auxversao1,auxtaberrocod,auxtabcodinstrucao:string;
auxusucob,auxcriterioe,flagexistefinanceiro,indlimpa,auxcarencia,indbeneficiario,qtdparcadesao,qtdparcrestante,auxtabcodbanco,flagproc1,flagproc2,auxusuprg,auxqtdmesvigente,auxbanco,indbeneficiario1:integer;
//
strbcodcconta,auxcep,auxbairro,auxtppessoa,auxnmbanco,auxstrcarencia,auxcodrecebedor,auxdescontoclipref,auxcpfcnpjura,auxTPLigacao:string;
auxusuarioconexao,auxddd,auxramal,auxclientepreferencial,auxcontratopreferencial,auxcontratopref,auxcontratoprefc,auxtabcodocorret,auxform,auxnmclienteentrada,auxperiodicidade,auxcontrato : string;
//
auxregtabcaractprd,auxtabcaractprd,auxtpmf,auxunidade,auxcodprocesso,auxramaltrab,auxiptelefonia,auxipgravacao,auxurl:string;
auxtabopcaopagto,indletra,auxequipecomissao,indprocesso,indsepultado,indprocant,indprocatu,indprocantgeral,indprocatugeral,auxclicoddiscador,auxclicodgravacao,flagura,auxmessemestre,barramenu:integer;
//
Present: TDateTime;
Year, Month, Day, Hour, Min, Sec, MSec: Word;
//
nSortCol,somadac,aAnos, aMeses, aDias, indlote, indprocessoant, indtotal, auxdiaboleto, inderro, indpagina : integer;

vlraberto, vlratrasado, vlracordoavencer, auxvlrtotaltitulo, auxpontualidade, auxvlrpontualidade, auxvlrtitvencido, auxvlrtitavencer, vlrtotaberavencer, vlrtotabervencido : double;

auxtotaloriginalgeral , auxtotalanteriorgeral , auxtotalatualgeral, auxitemvencido, auxitemavencer, auxsepreserva, auxqtdprodutotransferido, auxqtdprodutocancelado : integer;

auxqtdprodutopagoforaperiodo, indtotnegativado : integer;

strcodtransmissao400, strcomplemento, strcarteira, auxsql, auxlocalpdf, auxlocalpdf1 : string;

auxinstrucao1,auxinstrucao2, auxinstrucao3, auxinstrucao4, auxinstrucao5, auxinstrucao6, auxinstrucao7, auxtppontualidade : string;
auxvlrtitavencernodia, auxvlrtitatrasado, auxvlrtitcancelado, auxvlrliqvencido, auxvlrliqavencer, auxpercdesccomissao, auxpercmaxdescproduto: double;

auxqtdproduto, auxqtdprodutopago, auxqtdprodutovencido, auxqtdprodutoavencer, auxqtdprodutoquitado, indqtdmaxbeneficiario: integer;
auxvlrprodutopago, auxvlrprodutovencido, auxvlrprodutoavencer, auxvlrprodutopagoforaperiodo, auxvlrparcgerado : double;

AuxQtdPagoForaPeriodo, AuxQtdPago, AuxQtdVencido, AuxQtdAVencer, AuxProdutoCancelado, AuxProdutoQuitado,AuxPagoForaPeriodo: integer;
AuxValorParcGerado,AuxValorPago,AuxValorVencido,AuxValorAVencer,AuxValorPagoForaPeriodo,auxdifdata: double;
auxdata1, auxdata2 : tdatetime;
auxvlrcobranca, auxcodbarra, auxdatavencto, auxstrmin, auxstrhora, auxarquivoitau : string;

// variaveis para consulta ao webservice da republicavirtual
ConsultaWebServiceCEP: String;
RespostaWebServiceCEP: TStringStream;
TSConsultaWebServiceCEP: TStringList;

//
auxparamendereco, auxparamcidade, auxparambairro, auxparamcep, auxparamuf, auxmsg, auxparcela  : string;
flagtemagenda, auxtpagendamento, auxtpnavegacaoagendamento, auxcodliquidacao, auxnavtela, flaggeraextrato : integer;

auxvlrtotdescontomax, auxvlrtotdescontomin : double;
auxvlrmulta, auxvlrjuros, auxvlrdesconto, auxvlrdebito, auxvlrdebitoatualizado, auxvlrparcela, auxvlrentrada : double;

auxvlrparcrel, auxvlrjurosrel, auxvlrmultarel : double;

auxsituacaocontrato, auxsituacaocontratomotivo, auxstrdataini, auxstrdatafin, auxtipoparcela : string;

auxcodcliente, auxloteorigem, auxlotedestino, indprioridadeleitura : integer;

diaconv, mesconv, anoconv, auxnomepagina, auxdadosbancarios, auxstrremessa : string;


oldwidth, OldHeight, Auxwidth, Auxheight,flagtemacessoinclusaotitulomanual: integer;
auxformacompraunica, auxformacompraentrada, auxformacompraparcelada, ind2016 : integer;

indformacompraunica, indformacompraentrada, indformacompraparcelada, auxcodimagem, indfantasma : integer;

auxdataadmvendgaveta , auxdataadmpesqgaveta : TDateTime;

auxcodprodgaveta, flagerrocontrato, flagerrogaveta, auxgopcaopagto, flagcontratoexiste, auxusucodatd, auxcontrolactrpref : integer;

auxelegvendasgaveta, auxelegpesquisagaveta, auxdatactrprefinicial, auxdatactrpreffinal, auxdataprevpagto  : string;

auxvlrgaveta, auxvlrminentradagaveta, auxvlrparcgaveta, vlrtotdesconto : Double;
auxtotentrgaveta, auxtotparcgaveta, auxtotunicagaveta, auxvlrparcmanutencao, auxvlrcorrecao : double;
auxdatadb, auxhoradb, auxdatautil, auxdataajust : TDatetime;

auxvlrreceb99 , auxvlrtitavencer99,  auxvlrtitavencernodia99,  auxvlrtitatrasado99,  auxvlrtitcancelado99,   auxvlrtottit99 : double;

auxflagctrpref1, auxmsgclipref, auxflagctrpref2, auxflagctrprefparcatrasada, auxflagtemtituloctrprefparcavencer, auxflagtitulocliprefnoperiodo, auxdatainicialC, auxdatafinalC, auxocupacao, auxprestadorservico : string;

t : TTransactionDesc;

Trans: TDBXTransaction;


auxcbboxmesmanutencao, auxcbboxprdxopcaopagto, strvlrrminparcclipref, auxcontratofantasma, auxautorizacao, auxnsu, auxliqcartaocredito: string;
auxmkeddtcontrato, auxmkeddtpagto, auxmkeddata,  auxdatainicialCP, auxdatafinalCP : TDateTime;
auxcbboxopcaopagto : Integer;

contmes,contdia:integer;

auxindice, indice, auxvalorproduto, auxvlrdiferenca :Double;

vlrtotalaberto, vlrjurosacumulado, vlrcorrigidoigpm, vlrdevido, vlrigpm, vlrmulta, vlrjurosaodia, vlrjuros : double;

vlracordocorrecao, vlracordojuros, vlracordomulta, vlracordoatualizado : double;

percmes, percano, perc12meses : double;

prdqtdegaveta, prdqtdeossario, indqtdeparcelasemestral : integer;

auxcodprioridadeleitura, flagprimeiravez, flagtituloliquidado, flagcarga, flagemail :integer;
auxprioridadeleitura, auxemailboleto, auxmsgerro, auxdatautilstr, auxdatautilstrTerreno, auxhstsemsinal, auxhstsemsinal1, auxmsgemail, auxcausamortis :string;

auxdatasemestre, auxdatabaixanegativado:TDateTime;

vlra1, vlra2, vlra3, vlra4, vlra5, vlra6, vlra7, vlra8, vlra9, vlra10 : double;

flagtemacessonegativacaotitulo, flagoperacao, auxflagexistenegativado, flagsubstituicaocontrato :integer;

auxanoremessa : string;

implementation

end.
