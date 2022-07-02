/**
 * Author:  Valdecio
 * Created: 29 de jun de 2022
 * (?<=COMMENT ON TABLE[\s])(.*')
 */

DROP TABLE ACAO;
CREATE TABLE ACAO (
ID CHAR (40) NOT NULL ,
NOME CHAR (40)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE ACAO IS 'Define uma ação para os usuários do SAGE';
COMMENT ON COLUMN ACAO.ID IS 'Identificador da Ação do Usuário';
COMMENT ON COLUMN ACAO.NOME IS 'Nome';
COMMENT ON COLUMN ACAO.CMT IS 'Comentario';
COMMENT ON COLUMN ACAO.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE ACO;
CREATE TABLE ACO (
ID CHAR (10) NOT NULL ,
NOME CHAR (30) NOT NULL ,
PTC CHAR (20)  ,
REG CHAR (10) NOT NULL ,
SITE CHAR (10)  ,
ACOALT CHAR (2)  ,
AOR CHAR (20)  ,
ASSUME CHAR (3) DEFAULT 'NAO' CHECK (ASSUME IN ('NAO', 'SIM')),
COS CHAR (20)  ,
EXCMAX REAL  DEFAULT 99999 ,
EXCMIN REAL  DEFAULT -99999 ,
FATBIAS REAL  DEFAULT 0.0 CHECK (FATBIAS >= 0.0 AND FATBIAS <= 1.0),
MAXBIAS REAL  DEFAULT 0 ,
MINBIAS REAL  DEFAULT 0 ,
PAS_CAR_EE CHAR (32)  ,
SIS CHAR (10)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE ACO IS 'Área de controle';
COMMENT ON COLUMN ACO.ID IS 'Identificador';
COMMENT ON COLUMN ACO.NOME IS 'Nome da área de controle';
COMMENT ON COLUMN ACO.PTC IS 'Ocorrência da tabela PTC associada a área de controle para atualização de limites de equipamento';
COMMENT ON COLUMN ACO.REG IS 'Região';
COMMENT ON COLUMN ACO.SITE IS 'Site a que pertence em operação normal';
COMMENT ON COLUMN ACO.ACOALT IS 'Identificador da área de controle alternativa';
COMMENT ON COLUMN ACO.AOR IS 'Identificador da AOR associada a área de controle';
COMMENT ON COLUMN ACO.ASSUME IS 'Indicador de se a área alternativa irá assumir a área cujo CAG foi desligado';
COMMENT ON COLUMN ACO.COS IS 'Centro de operação associado a área de controle';
COMMENT ON COLUMN ACO.EXCMAX IS 'Valor máximo do intercâmbio líquido da área';
COMMENT ON COLUMN ACO.EXCMIN IS 'Valor mínimo do intercâmbio líquido da área';
COMMENT ON COLUMN ACO.FATBIAS IS 'Fator de adequação do Bias (0.0 a 1)';
COMMENT ON COLUMN ACO.MAXBIAS IS 'Valor máximo para o Bias';
COMMENT ON COLUMN ACO.MINBIAS IS 'Valor mínimo para o Bias';
COMMENT ON COLUMN ACO.PAS_CAR_EE IS 'Identificador da medida analógica que define a carga da área de controle para uso pelo EE';
COMMENT ON COLUMN ACO.SIS IS 'Sub-sistema associado a área de controle';
COMMENT ON COLUMN ACO.CMT IS 'Comentario';
COMMENT ON COLUMN ACO.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE AFP;
CREATE TABLE AFP (
EXCMAX REAL  DEFAULT 99999 ,
EXCMIN REAL  DEFAULT -99999 ,
NOME CHAR (36) NOT NULL ,
NUMERO CHAR (4) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (NUMERO)
);
COMMENT ON TABLE AFP IS 'Área elétrica para fluxo de potência';
COMMENT ON COLUMN AFP.EXCMAX IS 'Valor máximo do intercâmbio líquido da área';
COMMENT ON COLUMN AFP.EXCMIN IS 'Valor mínimo do intercâmbio líquido da área';
COMMENT ON COLUMN AFP.NOME IS 'Nome da área elétrica para fluxo de potência';
COMMENT ON COLUMN AFP.NUMERO IS 'Número da área elétrica para fluxo de potência';
COMMENT ON COLUMN AFP.CMT IS 'Comentario';
COMMENT ON COLUMN AFP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE AOR;
CREATE TABLE AOR (
COS CHAR (20)  ,
ID CHAR (20) NOT NULL ,
NOME CHAR (32)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE AOR IS 'Área de responsabilidade';
COMMENT ON COLUMN AOR.COS IS 'Centro de operação responsável pela AOR';
COMMENT ON COLUMN AOR.ID IS 'Identificador da área de responsabilidade';
COMMENT ON COLUMN AOR.NOME IS 'Nome da área de responsabilidade';
COMMENT ON COLUMN AOR.CMT IS 'Comentario';
COMMENT ON COLUMN AOR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE ARE;
CREATE TABLE ARE (
ID CHAR (10) NOT NULL ,
NOME CHAR (50)  ,
SIS CHAR (10) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE ARE IS 'Área elétrica';
COMMENT ON COLUMN ARE.ID IS 'Identificador';
COMMENT ON COLUMN ARE.NOME IS 'Nome';
COMMENT ON COLUMN ARE.SIS IS 'Sistema elétrico associado à área elétrica';
COMMENT ON COLUMN ARE.CMT IS 'Comentario';
COMMENT ON COLUMN ARE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE AUTOZ;
CREATE TABLE AUTOZ (
AOR CHAR (20) NOT NULL ,
GRACT CHAR (32) NOT NULL ,
IGNORA_COS CHAR (3) DEFAULT 'NAO' CHECK (IGNORA_COS IN ('NAO', 'SIM')),
PAPEL CHAR (20) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (PAPEL, GRACT, AOR)
);
COMMENT ON TABLE AUTOZ IS 'Autorização do Usuário';
COMMENT ON COLUMN AUTOZ.AOR IS 'Identificador da ação associada `a autorização';
COMMENT ON COLUMN AUTOZ.GRACT IS 'Identificador do grupo de ações associado `a autorização';
COMMENT ON COLUMN AUTOZ.IGNORA_COS IS 'Indica que a verificação grupo de ação X COS será ignorada';
COMMENT ON COLUMN AUTOZ.PAPEL IS 'Identificador do papel associado `a autorização';
COMMENT ON COLUMN AUTOZ.CMT IS 'Comentario';
COMMENT ON COLUMN AUTOZ.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE BAH;
CREATE TABLE BAH (
ID CHAR (10) NOT NULL ,
NOME CHAR (50)  ,
REGH CHAR (10) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE BAH IS 'Bacia hidrográfica';
COMMENT ON COLUMN BAH.ID IS 'Identificador';
COMMENT ON COLUMN BAH.NOME IS 'Nome';
COMMENT ON COLUMN BAH.REGH IS 'Região hidrográfica associada à bacia hidrográfica';
COMMENT ON COLUMN BAH.CMT IS 'Comentario';
COMMENT ON COLUMN BAH.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE BCP;
CREATE TABLE BCP (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
ECON CHAR (15)  ,
EST CHAR (15) NOT NULL ,
ID CHAR (21) NOT NULL ,
NOME CHAR (46)  ,
NOPO CHAR (6)  ,
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPOP CHAR (3) DEFAULT 'NAO' CHECK (TPOP IN ('NAO', 'SIM')),
TPREDE CHAR (20)  ,
VAL REAL  NOT NULL CHECK (VAL >= 0. AND VAL <= 600.),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE BCP IS 'Banco de capacitores';
COMMENT ON COLUMN BCP.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN BCP.ARE IS 'Identificador da área elétrica associada ao banco de capacitores';
COMMENT ON COLUMN BCP.CIA IS 'Companhia associada';
COMMENT ON COLUMN BCP.ECON IS 'Estação controlada';
COMMENT ON COLUMN BCP.EST IS 'Estação a que pertence';
COMMENT ON COLUMN BCP.ID IS 'Identificador';
COMMENT ON COLUMN BCP.NOME IS 'Nome';
COMMENT ON COLUMN BCP.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN BCP.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN BCP.TPOP IS 'Indica se o banco de capacitores é manobrável';
COMMENT ON COLUMN BCP.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN BCP.VAL IS 'Valor';
COMMENT ON COLUMN BCP.CMT IS 'Comentario';
COMMENT ON COLUMN BCP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE BND;
CREATE TABLE BND (
CAG CHAR (6) NOT NULL ,
CBAND REAL  NOT NULL ,
CBAND1 REAL  NOT NULL ,
CRETIM1 REAL  NOT NULL ,
CRETIM2 REAL  NOT NULL ,
CRETIM3 REAL  NOT NULL ,
CRETIM4 REAL  NOT NULL ,
ID CHAR (15) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE BND IS 'Bandas de Rejeição do CAG';
COMMENT ON COLUMN BND.CAG IS 'Identificador da instância da tabela CAG associada à banda de rejeição';
COMMENT ON COLUMN BND.CBAND IS 'Constante para cálculo das bandas de rejeição';
COMMENT ON COLUMN BND.CBAND1 IS 'Constante para cálculo do fator de peso da integral do ECA';
COMMENT ON COLUMN BND.CRETIM1 IS 'Constante para cálculo do tempo 1 de reação da banda';
COMMENT ON COLUMN BND.CRETIM2 IS 'Constante para cálculo do tempo 2 de reação da banda';
COMMENT ON COLUMN BND.CRETIM3 IS 'Constante para cálculo do tempo 3 de reação da banda';
COMMENT ON COLUMN BND.CRETIM4 IS 'Constante para cálculo do tempo 4 de reação da banda';
COMMENT ON COLUMN BND.ID IS 'Identificador';
COMMENT ON COLUMN BND.CMT IS 'Comentario';
COMMENT ON COLUMN BND.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CAG;
CREATE TABLE CAG (
ACO CHAR (10) NOT NULL ,
AGCT REAL  NOT NULL ,
CTLMOD CHAR (3) DEFAULT 'TLB' CHECK (CTLMOD IN ('FRQ', 'INT', 'TLB')),
DCARGA REAL  NOT NULL CHECK (DCARGA >= 0.01 AND DCARGA <= 0.02),
EDUFAC REAL  NOT NULL ,
FATBIAS REAL  NOT NULL CHECK (FATBIAS >= 0.1 AND FATBIAS <= 1.),
FFGAIN REAL  NOT NULL ,
ID CHAR (6) NOT NULL ,
K1 REAL  NOT NULL CHECK (K1 >= 0.95 AND K1 <= 0.99),
KGNRMX REAL  DEFAULT 1.0 ,
KR REAL  NOT NULL ,
MAXBIAS REAL  NOT NULL ,
MCRLG REAL  NOT NULL ,
MINBIAS REAL  NOT NULL ,
MNPROP REAL  NOT NULL ,
PROGAN REAL  NOT NULL ,
REFREQ REAL  DEFAULT 60.0 ,
TERSTMX INT  NOT NULL ,
TOLDB REAL  NOT NULL ,
TOLRL REAL  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CAG IS 'Parâmetros gerais de supervisão do CAG';
COMMENT ON COLUMN CAG.ACO IS 'Área de controle associada aos parâmetros do CAG';
COMMENT ON COLUMN CAG.AGCT IS 'Período de execução do CAG em segundos';
COMMENT ON COLUMN CAG.CTLMOD IS 'Modo inicial de operação do CAG';
COMMENT ON COLUMN CAG.DCARGA IS 'Constante de amortecimento da carga';
COMMENT ON COLUMN CAG.EDUFAC IS 'Peso da ação de controle calculada quando ela tem polaridade diferente do ECA';
COMMENT ON COLUMN CAG.FATBIAS IS 'Fator de adequação do BIAS dinâmico';
COMMENT ON COLUMN CAG.FFGAIN IS 'Limite de ganho do controle mestre para ignorar ação `feed-forward` do intercâmbio programado';
COMMENT ON COLUMN CAG.ID IS 'Identificador';
COMMENT ON COLUMN CAG.K1 IS 'Fator de muntiplicação da potência máxima efetiva para a consideração no BIAS dinâmico';
COMMENT ON COLUMN CAG.KGNRMX IS 'Multiplicador para conversão de LSOPP em GNRMX nas UGEs';
COMMENT ON COLUMN CAG.KR IS 'Fator em `base load regulation` para retornar unidade ao ponto base';
COMMENT ON COLUMN CAG.MAXBIAS IS 'Valor máximo do BIAS';
COMMENT ON COLUMN CAG.MCRLG IS 'Limite do ganho do controle mestre para suspender rampa oposta ao ECA';
COMMENT ON COLUMN CAG.MINBIAS IS 'Valor mínimo do BIAS';
COMMENT ON COLUMN CAG.MNPROP IS 'Valor de ganho do controle mestre que habilita o uso do ganho proporcional';
COMMENT ON COLUMN CAG.PROGAN IS 'Fator de ganho proporcional';
COMMENT ON COLUMN CAG.REFREQ IS 'Valor de referência para a frequência do sistema';
COMMENT ON COLUMN CAG.TERSTMX IS 'Número de ciclos do CAG para considerar falhas persistentes de telemedição';
COMMENT ON COLUMN CAG.TOLDB IS 'Banda de tolerância para alarme de unidades fora dos limites';
COMMENT ON COLUMN CAG.TOLRL IS 'Banda morta para para ativar o cálculo de set-point';
COMMENT ON COLUMN CAG.CMT IS 'Comentario';
COMMENT ON COLUMN CAG.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CAR;
CREATE TABLE CAR (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
EST CHAR (15) NOT NULL ,
GCA CHAR (23)  ,
GRLIM CHAR (3) DEFAULT 'MVA' CHECK (GRLIM IN ('AMP', 'MVA')),
ID CHAR (25) NOT NULL ,
LREFP REAL  DEFAULT 999999 ,
LSADI REAL  DEFAULT 999999 ,
LSANO REAL  DEFAULT 999999 ,
LSFI REAL  DEFAULT 99999 CHECK (LSFI >= 0 AND LSFI <= 100000),
LSOP REAL  DEFAULT 99999 CHECK (LSOP >= 0 AND LSOP <= 100000),
LSUDI REAL  DEFAULT 999999 ,
LSUNO REAL  DEFAULT 999999 ,
NOME CHAR (46)  ,
NOPO CHAR (6)  ,
RISCORL CHAR (5) DEFAULT 'BAIXO' CHECK (RISCORL IN ('ALTO', 'BAIXO', 'MEDIO')),
TIPO CHAR (5) DEFAULT 'CONF' CHECK (TIPO IN ('CONF', 'NCONF')),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CAR IS 'Carga';
COMMENT ON COLUMN CAR.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN CAR.ARE IS 'Identificador da área elétrica associada à carga';
COMMENT ON COLUMN CAR.CIA IS 'Companhia associada';
COMMENT ON COLUMN CAR.EST IS 'Estação a que pertence';
COMMENT ON COLUMN CAR.GCA IS 'Grupo de carga';
COMMENT ON COLUMN CAR.GRLIM IS 'Grandeza associada aos limites da carga';
COMMENT ON COLUMN CAR.ID IS 'Identificador';
COMMENT ON COLUMN CAR.LREFP IS 'Limite de referência para verificação de plausibilidade das medidas de fluxo associadas ao equipamento (MVA)';
COMMENT ON COLUMN CAR.LSADI IS 'Limite superior de advertência no período diurno';
COMMENT ON COLUMN CAR.LSANO IS 'Limite superior de advertência no período noturno';
COMMENT ON COLUMN CAR.LSFI IS 'Limite físico superior de potência aparente';
COMMENT ON COLUMN CAR.LSOP IS 'Limite operativo superior de potência aparente';
COMMENT ON COLUMN CAR.LSUDI IS 'Limite superior de urgência no período diurno';
COMMENT ON COLUMN CAR.LSUNO IS 'Limite superior de urgência no período noturno';
COMMENT ON COLUMN CAR.NOME IS 'Nome';
COMMENT ON COLUMN CAR.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN CAR.RISCORL IS 'Risco de religamento do equipamento';
COMMENT ON COLUMN CAR.TIPO IS 'Tipo da carga';
COMMENT ON COLUMN CAR.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN CAR.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN CAR.CMT IS 'Comentario';
COMMENT ON COLUMN CAR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CEA;
CREATE TABLE CEA (
CAG CHAR (6) NOT NULL ,
CNSFAC REAL  NOT NULL ,
EDFAC REAL  NOT NULL ,
EDFAC1 REAL  NOT NULL ,
EDUGMX REAL  NOT NULL ,
GAIN1 REAL  NOT NULL ,
GAIN2 REAL  NOT NULL ,
GAIN3 REAL  NOT NULL ,
GAIN4 REAL  NOT NULL ,
GAINDB REAL  NOT NULL ,
ID CHAR (6) NOT NULL ,
MCFAC REAL  NOT NULL ,
MCGAMX REAL  NOT NULL ,
TIM0CR REAL  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CEA IS 'Parâmetros do controle adaptativo do CAG';
COMMENT ON COLUMN CEA.CAG IS 'Identificador da instância da tabela CAG associada ao controle adaptativo';
COMMENT ON COLUMN CEA.CNSFAC IS 'Fator no cálculo do ganho do controle mestre quando ECA retorna a zero';
COMMENT ON COLUMN CEA.EDFAC IS 'Fator multiplicativo para calcular o ganho ótimo a partir do ganho do controle mestre';
COMMENT ON COLUMN CEA.EDFAC1 IS 'Fator aditivo para calcular o ganho ótimo a partir do ganho do controle mestre';
COMMENT ON COLUMN CEA.EDUGMX IS 'Valor máximo do ganho ótimo';
COMMENT ON COLUMN CEA.GAIN1 IS 'Ganho 1 para atualização da integral do ECA';
COMMENT ON COLUMN CEA.GAIN2 IS 'Ganho 2 para atualização da integral do ECA';
COMMENT ON COLUMN CEA.GAIN3 IS 'Ganho 3 para atualização da integral do ECA';
COMMENT ON COLUMN CEA.GAIN4 IS 'Ganho 4 para atualização da integral do ECA';
COMMENT ON COLUMN CEA.GAINDB IS 'Valor do ganho do controle mestre para ignorar a banda morta das unidades';
COMMENT ON COLUMN CEA.ID IS 'Identificador';
COMMENT ON COLUMN CEA.MCFAC IS 'Fator no cálculo do ganho do controle mestre quando ECA se afasta do zero';
COMMENT ON COLUMN CEA.MCGAMX IS 'Limite máximo do ganho do controle mestre';
COMMENT ON COLUMN CEA.TIM0CR IS 'Tempo médio entre cruzamentos do ECA por zero';
COMMENT ON COLUMN CEA.CMT IS 'Comentario';
COMMENT ON COLUMN CEA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CFSIS;
CREATE TABLE CFSIS (
DEF_SINC_MAN CHAR (3) DEFAULT 'NAO' CHECK (DEF_SINC_MAN IN ('NAO', 'SIM')),
MODELO_PIAF CHAR (3) DEFAULT 'SCD' CHECK (MODELO_PIAF IN ('ACO', 'CIA', 'CIM', 'SCD', 'SME')),
NOME CHAR (50)  ,
OCR_PASDIN CHAR (25)  ,
OCR_PDSDIN CHAR (25)  ,
OCR_PTSDIN CHAR (25)  ,
PERFIL CHAR (9) NOT NULL ,
SUBSIS_CORR CHAR (10)  ,
VERBD INT  DEFAULT 0 ,
SEV_BLINK CHAR (5)  CHECK (SEV_BLINK IN ('', 'ADVER', 'FATAL', 'NORML', 'PANIC', 'SNULA', 'URGEN')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (PERFIL)
);
COMMENT ON TABLE CFSIS IS 'Parametrização Genérica do Sistema';
COMMENT ON COLUMN CFSIS.DEF_SINC_MAN IS 'Escolha do default para autorização do sincronismo externo de entrada manual';
COMMENT ON COLUMN CFSIS.MODELO_PIAF IS 'Escolhe o modelo hierárquico a ser aplicado no PI-AF';
COMMENT ON COLUMN CFSIS.NOME IS 'Descrição do perfil de apresentação dos alarmes';
COMMENT ON COLUMN CFSIS.OCR_PASDIN IS 'Ocorrência de alarme associada aos pontos de cálculo analógico dinâmico';
COMMENT ON COLUMN CFSIS.OCR_PDSDIN IS 'Ocorrência de alarme associada aos pontos de cálculo digital dinâmico';
COMMENT ON COLUMN CFSIS.OCR_PTSDIN IS 'Ocorrência de alarme associada aos pontos de cálculo totalizado dinâmico';
COMMENT ON COLUMN CFSIS.PERFIL IS 'Perfil de debug do CAG';
COMMENT ON COLUMN CFSIS.SUBSIS_CORR IS 'Subsistema associado a base de dados corrente do SAGE';
COMMENT ON COLUMN CFSIS.VERBD IS 'Versão da base de dados';
COMMENT ON COLUMN CFSIS.SEV_BLINK IS 'Severidade a partir da qual ocorre blink nos pontos de medição em condição de alarme';
COMMENT ON COLUMN CFSIS.CMT IS 'Comentario';
COMMENT ON COLUMN CFSIS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CFU;
CREATE TABLE CFU (
CAR CHAR (25) NOT NULL ,
PCC REAL  NOT NULL CHECK (PCC >= 0. AND PCC <= 100.),
PZC REAL  NOT NULL CHECK (PZC >= 0. AND PZC <= 100.),
QCC REAL  NOT NULL CHECK (QCC >= 0. AND QCC <= 100.),
QZC REAL  NOT NULL CHECK (QZC >= 0. AND QZC <= 100.),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (CAR)
);
COMMENT ON TABLE CFU IS 'Carga funcional';
COMMENT ON COLUMN CFU.CAR IS 'Identificador da carga associada';
COMMENT ON COLUMN CFU.PCC IS 'Parcela da carga ativa representada como corrente constante';
COMMENT ON COLUMN CFU.PZC IS 'Parcela da carga ativa representada como impedância constante';
COMMENT ON COLUMN CFU.QCC IS 'Parcela da carga reativa representada como corrente constante';
COMMENT ON COLUMN CFU.QZC IS 'Parcela da carga reativa representada como impedância constante';
COMMENT ON COLUMN CFU.CMT IS 'Comentario';
COMMENT ON COLUMN CFU.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CGF;
CREATE TABLE CGF (
CGS CHAR (32)  ,
CNF CHAR (16)  ,
DESC1 CHAR (40)  ,
DESC2 CHAR (40)  ,
ID CHAR (48) NOT NULL ,
KCONV CHAR (64)  ,
NV2 CHAR (20) NOT NULL ,
OPCOES CHAR (32)  ,
ORDEM INT  DEFAULT 1 ,
NOME CHAR (60)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CGF IS 'Ponto de controle físico';
COMMENT ON COLUMN CGF.CGS IS 'Ponto de controle lógico';
COMMENT ON COLUMN CGF.CNF IS 'Configuração física associada ao controle distribuído';
COMMENT ON COLUMN CGF.DESC1 IS 'Informações complementares 1';
COMMENT ON COLUMN CGF.DESC2 IS 'Informações complementares 2';
COMMENT ON COLUMN CGF.ID IS 'Identificador';
COMMENT ON COLUMN CGF.KCONV IS 'Conversão p/ unidade do equipamento';
COMMENT ON COLUMN CGF.NV2 IS 'Identificador NV2';
COMMENT ON COLUMN CGF.OPCOES IS 'Complemento da conversão p/ unidade do equipamento';
COMMENT ON COLUMN CGF.ORDEM IS 'Ordem do ponto no nível 2 da configuração física';
COMMENT ON COLUMN CGF.NOME IS 'Nome';
COMMENT ON COLUMN CGF.CMT IS 'Comentario';
COMMENT ON COLUMN CGF.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CGS;
CREATE TABLE CGS (
AOR CHAR (20)  ,
ID CHAR (32) NOT NULL ,
IDOPER CHAR (32)  ,
IDICCP CHAR (32)  ,
INVCT CHAR (3) DEFAULT 'NAO' CHECK (INVCT IN ('NAO', 'SIM')),
LMI1C REAL  NOT NULL ,
LMI2C REAL  NOT NULL ,
LMS1C REAL  NOT NULL ,
LMS2C REAL  NOT NULL ,
NCOMISS CHAR (3) DEFAULT 'NAO' CHECK (NCOMISS IN ('NAO', 'SIM')),
NOME CHAR (63)  ,
OBSRV CHAR (42)  ,
PAC CHAR (32) NOT NULL ,
PINT CHAR (32)  ,
RSULT CHAR (3) DEFAULT 'NAO' CHECK (RSULT IN ('NAO', 'SIM')),
TAC CHAR (12) NOT NULL ,
TBLOQ INT  DEFAULT 0 ,
TIPO CHAR (3) NOT NULL CHECK (TIPO IN ('PAS', 'PDS', 'PTS')),
TIPOE CHAR (5) NOT NULL ,
TPCTL CHAR (4) DEFAULT 'CSAC' CHECK (TPCTL IN ('AFIC', 'CSAC', 'CSCD', 'DFIC')),
TRRAC INT  DEFAULT 10 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CGS IS 'Ponto de controle genérico do SAC';
COMMENT ON COLUMN CGS.AOR IS 'Área de responsabilidade';
COMMENT ON COLUMN CGS.ID IS 'Identificador';
COMMENT ON COLUMN CGS.IDOPER IS 'Identificador específico para o operador';
COMMENT ON COLUMN CGS.IDICCP IS 'Identificador para Servidor ICCP';
COMMENT ON COLUMN CGS.INVCT IS 'Indicador de controle invertido';
COMMENT ON COLUMN CGS.LMI1C IS 'Limite inferior set-point 1';
COMMENT ON COLUMN CGS.LMI2C IS 'Limite inferior set-point 2';
COMMENT ON COLUMN CGS.LMS1C IS 'Limite superior set-point 1';
COMMENT ON COLUMN CGS.LMS2C IS 'Limite superior set-point 2';
COMMENT ON COLUMN CGS.NCOMISS IS 'Indicador de ponto não comissionado';
COMMENT ON COLUMN CGS.NOME IS 'Nome do ponto';
COMMENT ON COLUMN CGS.OBSRV IS 'Observações sobre o ponto de controle';
COMMENT ON COLUMN CGS.PAC IS 'Ponto aquisitado';
COMMENT ON COLUMN CGS.PINT IS 'Ponto digital lógico de intertravamento';
COMMENT ON COLUMN CGS.RSULT IS 'Habilitação da verificação do resultado';
COMMENT ON COLUMN CGS.TAC IS 'TAC a que pertence';
COMMENT ON COLUMN CGS.TBLOQ IS 'Tempo para bloqueio após open';
COMMENT ON COLUMN CGS.TIPO IS 'Tipo do ponto aquisitado';
COMMENT ON COLUMN CGS.TIPOE IS 'Tipo de ponto de controle';
COMMENT ON COLUMN CGS.TPCTL IS 'Tipo do controle';
COMMENT ON COLUMN CGS.TRRAC IS 'Tempo para resultado';
COMMENT ON COLUMN CGS.CMT IS 'Comentario';
COMMENT ON COLUMN CGS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CIA;
CREATE TABLE CIA (
ACO CHAR (10)  ,
ID CHAR (10) NOT NULL ,
NOME CHAR (30) NOT NULL ,
PTC CHAR (20)  ,
SIS CHAR (10)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CIA IS 'Companhia';
COMMENT ON COLUMN CIA.ACO IS 'Área de controle default associada a companhia';
COMMENT ON COLUMN CIA.ID IS 'Identificador';
COMMENT ON COLUMN CIA.NOME IS 'Nome da companhia';
COMMENT ON COLUMN CIA.PTC IS 'Ocorrência da tabela PTC associada a companhia para atualização de limites de equipamento';
COMMENT ON COLUMN CIA.SIS IS 'Sistema elétrico associada a companhia';
COMMENT ON COLUMN CIA.CMT IS 'Comentario';
COMMENT ON COLUMN CIA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CLI;
CREATE TABLE CLI (
ACOE CHAR (10)  ,
ID CHAR (28) NOT NULL ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CLI IS 'Conjunto de linhas de intercâmbios';
COMMENT ON COLUMN CLI.ACOE IS 'Área de controle do ponto de entrega de intercâmbio';
COMMENT ON COLUMN CLI.ID IS 'Identificador do conjunto de linhas de intercâmbio';
COMMENT ON COLUMN CLI.NOME IS 'Nome';
COMMENT ON COLUMN CLI.CMT IS 'Comentario';
COMMENT ON COLUMN CLI.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CNC;
CREATE TABLE CNC (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CAPNOM REAL  DEFAULT 0 ,
CIA CHAR (10)  ,
EE CHAR (3) DEFAULT 'SIM' CHECK (EE IN ('NAO', 'SIM')),
EST CHAR (15) NOT NULL ,
ID CHAR (32) NOT NULL ,
NOME CHAR (50)  ,
NOPO CHAR (6)  ,
TIPO CHAR (15)  CHECK (TIPO IN ('', 'CHAVE', 'CHAVE_MAN_CARGA', 'CHAVE_MAN_VAZIO', 'CHAVE_MOT_CARGA', 'CHAVE_MOT_VAZIO', 'CHAVE_TERRA', 'DISJ')),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CNC IS 'Conector';
COMMENT ON COLUMN CNC.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN CNC.ARE IS 'Identificador da área elétrica associada ao conector';
COMMENT ON COLUMN CNC.CAPNOM IS 'Capacidade de interrupção do disjuntor';
COMMENT ON COLUMN CNC.CIA IS 'Companhia associada';
COMMENT ON COLUMN CNC.EE IS 'Indica se o conector será utilizado pelo Configurador / Estimador de Estado';
COMMENT ON COLUMN CNC.EST IS 'Estação a que pertence';
COMMENT ON COLUMN CNC.ID IS 'Identificador';
COMMENT ON COLUMN CNC.NOME IS 'Nome';
COMMENT ON COLUMN CNC.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN CNC.TIPO IS 'Tipo do conector';
COMMENT ON COLUMN CNC.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN CNC.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN CNC.CMT IS 'Comentario';
COMMENT ON COLUMN CNC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CNF;
CREATE TABLE CNF (
CONFIG CHAR (240)  ,
ID CHAR (16) NOT NULL ,
LSC CHAR (8) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CNF IS 'Configuração da ligação física do SCD';
COMMENT ON COLUMN CNF.CONFIG IS 'Configuração específica da ligação';
COMMENT ON COLUMN CNF.ID IS 'Identificador';
COMMENT ON COLUMN CNF.LSC IS 'Identificador da ligação SCADA';
COMMENT ON COLUMN CNF.CMT IS 'Comentario';
COMMENT ON COLUMN CNF.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CNM;
CREATE TABLE CNM (
ID CHAR (16) NOT NULL ,
JANMIN INT  DEFAULT 2 ,
JANRX INT  DEFAULT 3 ,
JANTX INT  DEFAULT 3 ,
MUL CHAR (16) NOT NULL ,
NMSXG INT  DEFAULT 64 ,
ORDEM INT  NOT NULL ,
PRIORI INT  DEFAULT 0 ,
TMPRE INT  DEFAULT 15 ,
TMPRX INT  DEFAULT 5 ,
TMPTX INT  DEFAULT 10 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CNM IS 'Canal lógico (LLP) de multiligação X25-X75';
COMMENT ON COLUMN CNM.ID IS 'Identificador';
COMMENT ON COLUMN CNM.JANMIN IS 'Abertura mínima da janela de recepção';
COMMENT ON COLUMN CNM.JANRX IS 'Janela de recepção';
COMMENT ON COLUMN CNM.JANTX IS 'Janela de transmissão';
COMMENT ON COLUMN CNM.MUL IS 'Multiligação do canal';
COMMENT ON COLUMN CNM.NMSXG IS 'Número máximo de segmentos de uma msg lógica';
COMMENT ON COLUMN CNM.ORDEM IS 'Ordem da conexão de Multiligação dentro do GSD';
COMMENT ON COLUMN CNM.PRIORI IS 'Prioridade do canal lógico';
COMMENT ON COLUMN CNM.TMPRE IS 'Temporizador de reinicialização';
COMMENT ON COLUMN CNM.TMPRX IS 'Temporizador de recepção';
COMMENT ON COLUMN CNM.TMPTX IS 'Temporizador de transmissão';
COMMENT ON COLUMN CNM.CMT IS 'Comentario';
COMMENT ON COLUMN CNM.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CNV;
CREATE TABLE CNV (
ADMAX REAL  DEFAULT 0.0 CHECK (ADMAX >= 0. AND ADMAX <= 180.),
ADMAXINV REAL  DEFAULT 0.0 CHECK (ADMAXINV >= 0. AND ADMAXINV <= 180.),
ADMAXRET REAL  DEFAULT 0.0 CHECK (ADMAXRET >= 0. AND ADMAXRET <= 180.),
ADMIN REAL  DEFAULT 0.0 CHECK (ADMIN >= -30. AND ADMIN <= 90.),
ADMININV REAL  DEFAULT 0.0 CHECK (ADMININV >= -30. AND ADMININV <= 90.),
ADMINRET REAL  DEFAULT 0.0 CHECK (ADMINRET >= -30. AND ADMINRET <= 90.),
AD_ESP REAL  DEFAULT 0 ,
AD_ESP_INV REAL  DEFAULT 0 ,
AD_ESP_RET REAL  DEFAULT 0 ,
AMP_NOM REAL  DEFAULT 0 ,
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CAPACITANCIA REAL  DEFAULT 0 ,
CIA CHAR (10)  ,
ELO CHAR (25) NOT NULL ,
ESTAC CHAR (15) NOT NULL ,
ESTDC1 CHAR (15) NOT NULL ,
ESTDC2 CHAR (15)  ,
ID CHAR (25) NOT NULL ,
IMAX REAL  DEFAULT 0 ,
LALISA REAL  NOT NULL ,
MARGEM_COR REAL  DEFAULT 0 ,
MARG_COR_INV REAL  DEFAULT 0 ,
MARG_COR_RET REAL  DEFAULT 0 ,
MODO_CTRL CHAR (6) DEFAULT 'TENSAO' CHECK (MODO_CTRL IN ('GAMA', 'TENSAO')),
NOME CHAR (46)  ,
NOPO CHAR (6)  ,
NPONTES_6P INT  NOT NULL ,
PENT CHAR (3) DEFAULT 'NAO' CHECK (PENT IN ('NAO', 'SIM')),
POLARID CHAR (3) NOT NULL CHECK (POLARID IN ('NEG', 'POS')),
RALISA REAL  NOT NULL ,
SNOM REAL  NOT NULL ,
TAT CHAR (25) NOT NULL ,
TIPO_CTRL CHAR (9) DEFAULT 'POTENCIA' CHECK (TIPO_CTRL IN ('CORRENTE', 'POTENCIA')),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPOPER CHAR (11) NOT NULL CHECK (TPOPER IN ('INVERSOR', 'RETIFICADOR')),
TPREDE CHAR (20)  ,
VBSE REAL  NOT NULL ,
VESP REAL  NOT NULL ,
VMIN REAL  DEFAULT 0.4 ,
VNOM REAL  NOT NULL ,
XCOMU REAL  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CNV IS 'Conversor';
COMMENT ON COLUMN CNV.ADMAX IS 'Ângulo máximo de disparo / extinção em graus';
COMMENT ON COLUMN CNV.ADMAXINV IS 'Ângulo máximo de disparo / extinção em graus no modo inversor';
COMMENT ON COLUMN CNV.ADMAXRET IS 'Ângulo máximo de disparo / extinção em graus no modo retificador';
COMMENT ON COLUMN CNV.ADMIN IS 'Ângulo mínimo de disparo / extinção em graus';
COMMENT ON COLUMN CNV.ADMININV IS 'Ângulo mínimo de disparo / extinção em graus no modo inversor';
COMMENT ON COLUMN CNV.ADMINRET IS 'Ângulo mínimo de disparo / extinção em graus no modo retificador';
COMMENT ON COLUMN CNV.AD_ESP IS 'Ângulo de disparo desejado do conversor em graus';
COMMENT ON COLUMN CNV.AD_ESP_INV IS 'Ângulo de disparo desejado do conversor em graus no modo inversor';
COMMENT ON COLUMN CNV.AD_ESP_RET IS 'Ângulo de disparo desejado do conversor em graus no modo retificador';
COMMENT ON COLUMN CNV.AMP_NOM IS 'Corrente Nominal do Conversor em amperes';
COMMENT ON COLUMN CNV.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN CNV.ARE IS 'Identificador da área elétrica associada ao conversor';
COMMENT ON COLUMN CNV.CAPACITANCIA IS 'Capacitância do conversor back to back em microF';
COMMENT ON COLUMN CNV.CIA IS 'Companhia associada';
COMMENT ON COLUMN CNV.ELO IS 'Identificador do Elo DC';
COMMENT ON COLUMN CNV.ESTAC IS 'Estação AC associada ao conversor';
COMMENT ON COLUMN CNV.ESTDC1 IS 'Estação DC 1 associada ao conversor';
COMMENT ON COLUMN CNV.ESTDC2 IS 'Estação DC 2 associada ao conversor';
COMMENT ON COLUMN CNV.ID IS 'Identificador';
COMMENT ON COLUMN CNV.IMAX IS 'Máxima sobrecorrente permitida para o conversor em %';
COMMENT ON COLUMN CNV.LALISA IS 'Indutância do reator de alisamento em mH';
COMMENT ON COLUMN CNV.MARGEM_COR IS 'Margem de corrente do conversor em %';
COMMENT ON COLUMN CNV.MARG_COR_INV IS 'Margem de corrente do conversor em % no modo inversor';
COMMENT ON COLUMN CNV.MARG_COR_RET IS 'Margem de corrente do conversor em % no modo retificador';
COMMENT ON COLUMN CNV.MODO_CTRL IS 'Modo de Controle do inversor CCC (Controle de gama ou tensão na interface)';
COMMENT ON COLUMN CNV.NOME IS 'Nome';
COMMENT ON COLUMN CNV.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN CNV.NPONTES_6P IS 'Número de pontes equivalentes de seis pulsos ANAREDE';
COMMENT ON COLUMN CNV.PENT IS 'Considera o terminal AC do conversor como ponto de entrega de intercâmbio';
COMMENT ON COLUMN CNV.POLARID IS 'Polaridade';
COMMENT ON COLUMN CNV.RALISA IS 'Resistência do reator de alisamento em ohms';
COMMENT ON COLUMN CNV.SNOM IS 'Potência base do transformador conversor em MVA';
COMMENT ON COLUMN CNV.TAT IS 'Tabela de taps associada ao conversor';
COMMENT ON COLUMN CNV.TIPO_CTRL IS 'Tipo de Controle do conversor (corrente ou potência)';
COMMENT ON COLUMN CNV.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN CNV.TPOPER IS 'Tipo de Operação do Conversor (Retificador ou Inversor)';
COMMENT ON COLUMN CNV.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN CNV.VBSE IS 'Tensão Base fase-fase em KV do secundário do transformador conversor';
COMMENT ON COLUMN CNV.VESP IS 'Valor especificado para controle do conversor (Amper p/ modo de corrente ou MW p/ modo de potência)';
COMMENT ON COLUMN CNV.VMIN IS 'Tensão DC em PU mínima na qual o conversor passa a operar em controle de corrente';
COMMENT ON COLUMN CNV.VNOM IS 'Tensão nominal em KV do lado DC';
COMMENT ON COLUMN CNV.XCOMU IS 'Reatância de comutação de cada ponte de seis pulsos em %';
COMMENT ON COLUMN CNV.CMT IS 'Comentario';
COMMENT ON COLUMN CNV.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE COR;
CREATE TABLE COR (
BLINK CHAR (3) DEFAULT 'NAO' CHECK (BLINK IN ('NAO', 'SIM')),
COR_BLINK CHAR (25)  ,
COR_PERCENT_B INT  NOT NULL ,
COR_PERCENT_G INT  NOT NULL ,
COR_PERCENT_R INT  NOT NULL ,
COR_PRINT CHAR (25)  ,
ID CHAR (25) NOT NULL ,
ORDEM INT  DEFAULT 0 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE COR IS 'Paleta de cores';
COMMENT ON COLUMN COR.BLINK IS 'Piscar';
COMMENT ON COLUMN COR.COR_BLINK IS 'Segunda cor do blink';
COMMENT ON COLUMN COR.COR_PERCENT_B IS 'Percentual do componente blue do RGB';
COMMENT ON COLUMN COR.COR_PERCENT_G IS 'Percentual do componente green do RGB';
COMMENT ON COLUMN COR.COR_PERCENT_R IS 'Percentual do Componente red do RGB';
COMMENT ON COLUMN COR.COR_PRINT IS 'Cor para impressão';
COMMENT ON COLUMN COR.ID IS 'Identificador da cor';
COMMENT ON COLUMN COR.ORDEM IS 'Ordenação';
COMMENT ON COLUMN COR.CMT IS 'Comentario';
COMMENT ON COLUMN COR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE COS;
CREATE TABLE COS (
CONSIDERA_AOI CHAR (3) DEFAULT 'NAO' CHECK (CONSIDERA_AOI IN ('NAO', 'SIM')),
COS_BACKUP CHAR (20)  ,
ID CHAR (20) NOT NULL ,
NOME CHAR (50)  ,
SUBSIS CHAR (10) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE COS IS 'Define um centro de controle de um SSC';
COMMENT ON COLUMN COS.CONSIDERA_AOI IS 'Indicador para considerar a AOI na geração de alarmes';
COMMENT ON COLUMN COS.COS_BACKUP IS 'Centro de operação backup';
COMMENT ON COLUMN COS.ID IS 'Identificador';
COMMENT ON COLUMN COS.NOME IS 'Nome';
COMMENT ON COLUMN COS.SUBSIS IS 'Subsistema computacional a que pertence o centro de controle';
COMMENT ON COLUMN COS.CMT IS 'Comentario';
COMMENT ON COLUMN COS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CPB;
CREATE TABLE CPB (
ID CHAR (25) NOT NULL ,
PMAX REAL  NOT NULL CHECK (PMAX >= 0. AND PMAX <= 20000.),
PMIN REAL  NOT NULL CHECK (PMIN >= 0. AND PMIN <= 1000),
PNOM REAL  NOT NULL CHECK (PNOM >= 0. AND PNOM <= 20000),
QIPI REAL  NOT NULL CHECK (QIPI >= -10000. AND QIPI <= 0.),
QIPN REAL  NOT NULL CHECK (QIPN >= -10000. AND QIPN <= 0.),
QSPI REAL  NOT NULL CHECK (QSPI >= 0. AND QSPI <= 10000.),
QSPN REAL  NOT NULL CHECK (QSPN >= 0. AND QSPN <= 10000.),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CPB IS 'Curva de capabilidade';
COMMENT ON COLUMN CPB.ID IS 'Identificador';
COMMENT ON COLUMN CPB.PMAX IS 'Potência ativa máxima';
COMMENT ON COLUMN CPB.PMIN IS 'Potência ativa mínima';
COMMENT ON COLUMN CPB.PNOM IS 'Potência ativa nominal';
COMMENT ON COLUMN CPB.QIPI IS 'Potência reativa mínima para potência ativa mínima';
COMMENT ON COLUMN CPB.QIPN IS 'Potência reativa mínima para potência ativa nominal';
COMMENT ON COLUMN CPB.QSPI IS 'Potência reativa máxima para potência ativa mínima';
COMMENT ON COLUMN CPB.QSPN IS 'Potência reativa máxima para potência ativa nominal';
COMMENT ON COLUMN CPB.CMT IS 'Comentario';
COMMENT ON COLUMN CPB.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CRE;
CREATE TABLE CRE (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
ECON CHAR (15)  ,
EST CHAR (15) NOT NULL ,
ID CHAR (21) NOT NULL ,
INCL REAL  DEFAULT 2 ,
LIFI REAL  NOT NULL CHECK (LIFI >= -300. AND LIFI <= 0.),
LIOP REAL  DEFAULT 0 CHECK (LIOP >= -300. AND LIOP <= 0.),
LSFI REAL  NOT NULL CHECK (LSFI >= 0. AND LSFI <= 1000.),
LSOP REAL  DEFAULT 0 CHECK (LSOP >= 0. AND LSOP <= 10000.),
MODDIN INT  DEFAULT 0 CHECK (MODDIN >= 0 AND MODDIN <= 90),
NOME CHAR (46)  ,
NOMEBAR_EQV CHAR (12)  ,
NOPO CHAR (6)  ,
NUMBAR_EQV INT  DEFAULT 0 ,
TPCTL CHAR (1) DEFAULT 'Q' CHECK (TPCTL IN ('I', 'Q')),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CRE IS 'Compensador reativo estático controlável (CREC)';
COMMENT ON COLUMN CRE.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN CRE.ARE IS 'Identificador da área elétrica associada ao compensador estático';
COMMENT ON COLUMN CRE.CIA IS 'Companhia associada';
COMMENT ON COLUMN CRE.ECON IS 'Estação controlada';
COMMENT ON COLUMN CRE.EST IS 'Estação a que pertence';
COMMENT ON COLUMN CRE.ID IS 'Identificador';
COMMENT ON COLUMN CRE.INCL IS 'Valor da inclinação (KV/MVAR) da reta que define a parte linear da curva de controle do modelo do Compensador Estático de Reativo';
COMMENT ON COLUMN CRE.LIFI IS 'Limite físico inferior de potência reativa';
COMMENT ON COLUMN CRE.LIOP IS 'Limite operativo inferior de potência reativa';
COMMENT ON COLUMN CRE.LSFI IS 'Limite físico superior de potência reativa';
COMMENT ON COLUMN CRE.LSOP IS 'Limite operativo superior de potência reativa';
COMMENT ON COLUMN CRE.MODDIN IS 'Modelo dinâmico do compensador estático';
COMMENT ON COLUMN CRE.NOME IS 'Nome';
COMMENT ON COLUMN CRE.NOMEBAR_EQV IS 'Nome da barra equivalente para agrupamento de compensadores estáticos';
COMMENT ON COLUMN CRE.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN CRE.NUMBAR_EQV IS 'Número da barra equivalente para agrupamento de compensadores estáticos';
COMMENT ON COLUMN CRE.TPCTL IS 'Tipo de Controle (Potência Reativa Cte. Corrente Cte.)';
COMMENT ON COLUMN CRE.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN CRE.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN CRE.CMT IS 'Comentario';
COMMENT ON COLUMN CRE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CSE;
CREATE TABLE CSE (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
EST CHAR (15) NOT NULL ,
ID CHAR (21) NOT NULL ,
LSFI REAL  DEFAULT 99999 CHECK (LSFI >= 0 AND LSFI <= 100000),
LSOP REAL  DEFAULT 99999. CHECK (LSOP >= 0 AND LSOP <= 100000),
MODDIN INT  DEFAULT 1 CHECK (MODDIN IN ('1', '2', '3', '4', '5', '6', '7', '8', '9')),
NESTG INT  DEFAULT 0 ,
NOME CHAR (46)  ,
NOMEBAR CHAR (12)  ,
NOPO CHAR (6)  ,
NUMBAR INT  DEFAULT 0 ,
SBASE REAL  DEFAULT 100. ,
TPCTL CHAR (1) DEFAULT 'X' CHECK (TPCTL IN ('I', 'P', 'X')),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
VBASE REAL  DEFAULT 0 ,
X REAL  DEFAULT 0.01 CHECK (X >= -20 AND X <= 20),
X_MAX REAL  DEFAULT 20. CHECK (X_MAX >= -20 AND X_MAX <= 20),
X_MIN REAL  DEFAULT -20 CHECK (X_MIN >= -20 AND X_MIN <= 20),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CSE IS 'Compensador série';
COMMENT ON COLUMN CSE.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN CSE.ARE IS 'Identificador da área elétrica associada ao compensador série';
COMMENT ON COLUMN CSE.CIA IS 'Companhia associada';
COMMENT ON COLUMN CSE.EST IS 'Estação a que pertence';
COMMENT ON COLUMN CSE.ID IS 'Identificador';
COMMENT ON COLUMN CSE.LSFI IS 'Limite físico superior de potência aparente';
COMMENT ON COLUMN CSE.LSOP IS 'Limite operativo superior de potência aparente';
COMMENT ON COLUMN CSE.MODDIN IS 'Modelo dinâmico do compensador série';
COMMENT ON COLUMN CSE.NESTG IS 'Número de estágios do CSE discreto (TSSC)';
COMMENT ON COLUMN CSE.NOME IS 'Nome';
COMMENT ON COLUMN CSE.NOMEBAR IS 'Nome do nó elétrico fictício associado ao compensador série';
COMMENT ON COLUMN CSE.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN CSE.NUMBAR IS 'Número externo do nó elétrico fictício associado ao compensador série';
COMMENT ON COLUMN CSE.SBASE IS 'Potência base utilizada no cálculo dos parâmetros do compensador série';
COMMENT ON COLUMN CSE.TPCTL IS 'Tipo de controle (Potência Cte., Corrente Cte., Reatância Cte.)';
COMMENT ON COLUMN CSE.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN CSE.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN CSE.VBASE IS 'Tensão base utilizada no cálculo dos parâmetros do compensador série';
COMMENT ON COLUMN CSE.X IS 'Reatância do compensador série fixo ou valor inicial para CSE variável';
COMMENT ON COLUMN CSE.X_MAX IS 'Reatância máxima';
COMMENT ON COLUMN CSE.X_MIN IS 'Reatância mínima';
COMMENT ON COLUMN CSE.CMT IS 'Comentario';
COMMENT ON COLUMN CSE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CSI;
CREATE TABLE CSI (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
ECON CHAR (15)  ,
EST CHAR (15) NOT NULL ,
ID CHAR (21) NOT NULL ,
INERCIA REAL  DEFAULT 0 ,
LIFI REAL  DEFAULT 0 CHECK (LIFI >= -10000. AND LIFI <= 0.),
LIOP REAL  DEFAULT 0 CHECK (LIOP >= -10000. AND LIOP <= 0.),
LSFI REAL  DEFAULT 0 CHECK (LSFI >= 0. AND LSFI <= 10000.),
LSOP REAL  DEFAULT 0 CHECK (LSOP >= 0. AND LSOP <= 10000.),
MODDIN INT  DEFAULT 0 CHECK (MODDIN >= 0 AND MODDIN <= 90),
NOME CHAR (46)  ,
NOMEBAR_EQV CHAR (12)  ,
NOPO CHAR (6)  ,
NUMBAR_EQV INT  DEFAULT 0 ,
SNOM REAL  NOT NULL ,
TPBASE CHAR (3) DEFAULT 'SIS' CHECK (TPBASE IN ('GER', 'SIS')),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
X2LD REAL  DEFAULT 0 ,
XD REAL  DEFAULT 0 ,
XL REAL  DEFAULT 0 ,
XLD REAL  DEFAULT 0 ,
XQ REAL  DEFAULT 0 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CSI IS 'Compensador síncrono';
COMMENT ON COLUMN CSI.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN CSI.ARE IS 'Identificador da área elétrica associada ao compensador síncrono';
COMMENT ON COLUMN CSI.CIA IS 'Companhia associada';
COMMENT ON COLUMN CSI.ECON IS 'Estação controlada';
COMMENT ON COLUMN CSI.EST IS 'Estação a que pertence';
COMMENT ON COLUMN CSI.ID IS 'Identificador';
COMMENT ON COLUMN CSI.INERCIA IS 'Inércia da máquina síncrona';
COMMENT ON COLUMN CSI.LIFI IS 'Limite físico inferior de potência reativa';
COMMENT ON COLUMN CSI.LIOP IS 'Limite operativo inferior de potência reativa';
COMMENT ON COLUMN CSI.LSFI IS 'Limite físico superior de potência reativa';
COMMENT ON COLUMN CSI.LSOP IS 'Limite operativo superior de potência reativa';
COMMENT ON COLUMN CSI.MODDIN IS 'Modelo dinâmico do compensador síncrono';
COMMENT ON COLUMN CSI.NOME IS 'Nome';
COMMENT ON COLUMN CSI.NOMEBAR_EQV IS 'Nome da barra equivalente para agrupamento de compensadores síncronos';
COMMENT ON COLUMN CSI.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN CSI.NUMBAR_EQV IS 'Número da barra equivalente para agrupamento de compensadores síncronos';
COMMENT ON COLUMN CSI.SNOM IS 'Potência aparente nominal';
COMMENT ON COLUMN CSI.TPBASE IS 'Tipo de base de potência associada aos atributos XD, XQ, XL, XLD e X2LD';
COMMENT ON COLUMN CSI.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN CSI.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN CSI.X2LD IS 'Reatância subtransitória de eixo direto para estudos de curto-circuito (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN CSI.XD IS 'Reatância síncrona de eixo direto (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN CSI.XL IS 'Reatância de dispersão (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN CSI.XLD IS 'Reatância transitória de eixo direto para estudos de curto-circuito (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN CSI.XQ IS 'Reatância síncrona de eixo quadratura (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN CSI.CMT IS 'Comentario';
COMMENT ON COLUMN CSI.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CTX;
CREATE TABLE CTX (
COS CHAR (20)  ,
ID CHAR (15) NOT NULL ,
NOME CHAR (40) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CTX IS 'Contexto';
COMMENT ON COLUMN CTX.COS IS 'Identificador do Centro de Controle associado ao Contexto';
COMMENT ON COLUMN CTX.ID IS 'Identificador do contexto';
COMMENT ON COLUMN CTX.NOME IS 'Nome do contexto';
COMMENT ON COLUMN CTX.CMT IS 'Comentario';
COMMENT ON COLUMN CTX.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CXP;
CREATE TABLE CXP (
CLASSE CHAR (31) NOT NULL ,
PRO CHAR (25) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (PRO, CLASSE)
);
COMMENT ON TABLE CXP IS 'Relacionamento Classe de MCD x Classe de processo';
COMMENT ON COLUMN CXP.CLASSE IS 'Classe de MCD utilizada pelo processo';
COMMENT ON COLUMN CXP.PRO IS 'Nome do processo';
COMMENT ON COLUMN CXP.CMT IS 'Comentario';
COMMENT ON COLUMN CXP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE CXU;
CREATE TABLE CXU (
AQANL INT  DEFAULT 200 ,
AQPOL INT  DEFAULT 100 ,
AQTOT INT  DEFAULT 6000 ,
AQINF INT  DEFAULT 0 ,
FAILP INT  DEFAULT 2880000 ,
FAILR INT  DEFAULT 30000 ,
GSD CHAR (8) NOT NULL ,
ID CHAR (16) NOT NULL ,
INTGR INT  DEFAULT 18000 ,
NFAIL INT  DEFAULT 5 ,
NOME CHAR (63)  ,
ORDEM INT  NOT NULL ,
SFAIL INT  DEFAULT 200 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE CXU IS 'Conexão de comunicação c/ utr e canal';
COMMENT ON COLUMN CXU.AQANL IS 'Tempo de aquisição analógica';
COMMENT ON COLUMN CXU.AQPOL IS 'Tempo de aquisição de polling words';
COMMENT ON COLUMN CXU.AQTOT IS 'Tempo de aquisição de totalizadores';
COMMENT ON COLUMN CXU.AQINF IS 'Tempo de aquisição de strings de informação';
COMMENT ON COLUMN CXU.FAILP IS 'Tempo de failover para canal primário';
COMMENT ON COLUMN CXU.FAILR IS 'Tempo de failover para canal reserva';
COMMENT ON COLUMN CXU.GSD IS 'Gate-way SCADA';
COMMENT ON COLUMN CXU.ID IS 'Identificador';
COMMENT ON COLUMN CXU.INTGR IS 'Tempo para integridade';
COMMENT ON COLUMN CXU.NFAIL IS 'Número de tentativas de failover';
COMMENT ON COLUMN CXU.NOME IS 'Nome';
COMMENT ON COLUMN CXU.ORDEM IS 'Ordem da conexão UTR dentro do GSD';
COMMENT ON COLUMN CXU.SFAIL IS 'Tempo de sincronismo de failover';
COMMENT ON COLUMN CXU.CMT IS 'Comentario';
COMMENT ON COLUMN CXU.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE DCJ;
CREATE TABLE DCJ (
ACECTM INT  NOT NULL ,
COATIM INT  NOT NULL ,
CTLMOD CHAR (3) DEFAULT 'LOC' CHECK (CTLMOD IN ('LOC', 'REM')),
DCJT REAL  NOT NULL ,
GNCTMX INT  NOT NULL ,
ID CHAR (12) NOT NULL ,
KGNRMX REAL  DEFAULT 1.0 ,
KR REAL  NOT NULL ,
MINCLPR INT  DEFAULT 3 CHECK (MINCLPR >= 0 AND MINCLPR <= 20),
PROGAN REAL  NOT NULL ,
TERSTMX INT  NOT NULL ,
TMAXED INT  NOT NULL ,
TMINED INT  NOT NULL ,
TOLDB REAL  NOT NULL ,
TOLRL REAL  NOT NULL ,
USI CHAR (12) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE DCJ IS 'Parâmetros gerais de supervisão do DCJ';
COMMENT ON COLUMN DCJ.ACECTM IS 'Ciclos de CAG entre mensagens periódicas';
COMMENT ON COLUMN DCJ.COATIM IS 'Número mínimo de ciclos do CAG entre duas ações de controle';
COMMENT ON COLUMN DCJ.CTLMOD IS 'Modo inicial de operação do DCJ';
COMMENT ON COLUMN DCJ.DCJT IS 'Período de execução do DCJ em segundos';
COMMENT ON COLUMN DCJ.GNCTMX IS 'Ciclos de CAG entre controles dentro da banda morta';
COMMENT ON COLUMN DCJ.ID IS 'Identificador';
COMMENT ON COLUMN DCJ.KGNRMX IS 'Multiplicador para conversão de LSOPP em GNRMX nas UGEs';
COMMENT ON COLUMN DCJ.KR IS 'Fator em `base load regulation` para retornar unidade ao ponto base';
COMMENT ON COLUMN DCJ.MINCLPR IS 'Número mínimo de ciclos de controle (dcjt*coatim) para envio de controle em sentido reverso';
COMMENT ON COLUMN DCJ.PROGAN IS 'Fator de ganho proporcional';
COMMENT ON COLUMN DCJ.TERSTMX IS 'Número de ciclos do DCJ para considerar falhas persistentes de telemedição';
COMMENT ON COLUMN DCJ.TMAXED IS 'Máximo de ciclos de CAG máximo para ativar o cálculo de set-point';
COMMENT ON COLUMN DCJ.TMINED IS 'Mínimo de ciclos de CAG para ativar o cálculo de set-point';
COMMENT ON COLUMN DCJ.TOLDB IS 'Banda de tolerância para alarme de unidades fora dos limites';
COMMENT ON COLUMN DCJ.TOLRL IS 'Banda morta para para ativar o cálculo de set-point';
COMMENT ON COLUMN DCJ.USI IS 'Usina associada aos parâmetros do DCJ';
COMMENT ON COLUMN DCJ.CMT IS 'Comentario';
COMMENT ON COLUMN DCJ.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE DEQP;
CREATE TABLE DEQP (
DTIP CHAR (15)  CHECK (DTIP IN ('', 'DIA_UTIL', 'DOMINGO', 'FIM_SEMANA', 'QUARTA', 'QUINTA', 'SABADO', 'SEGUNDA', 'SEXTA', 'TERCA')),
EQP CHAR (25) NOT NULL ,
PATAMAR CHAR (3)  CHECK (PATAMAR IN ('', 'LEV', 'MED', 'PES')),
TPEQP CHAR (3) NOT NULL CHECK (TPEQP IN ('BCP', 'CAR', 'CRE', 'CSE', 'CSI', 'LTR', 'RAM', 'REA', 'TR2', 'TR3', 'UGE')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (TPEQP, EQP, DTIP, PATAMAR)
);
COMMENT ON TABLE DEQP IS 'Desligamento Programado de Equipamentos do Sistema Externo por Dia Típico';
COMMENT ON COLUMN DEQP.DTIP IS 'Dia típico associado ao perfil de carga';
COMMENT ON COLUMN DEQP.EQP IS 'Identificador do equipamento a ser desligado';
COMMENT ON COLUMN DEQP.PATAMAR IS 'Patamar de Carga associado ao perfil de carga';
COMMENT ON COLUMN DEQP.TPEQP IS 'Tipo do equipamento a ser desligado';
COMMENT ON COLUMN DEQP.CMT IS 'Comentario';
COMMENT ON COLUMN DEQP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE DPE;
CREATE TABLE DPE (
DVP_KV_A REAL  NOT NULL ,
DVP_KV_B REAL  NOT NULL ,
DVP_AF_A REAL  NOT NULL ,
DVP_AF_B REAL  NOT NULL ,
DVP_P1_A REAL  NOT NULL ,
DVP_P1_B REAL  NOT NULL ,
DVP_P2_A REAL  NOT NULL ,
DVP_P2_B REAL  NOT NULL ,
DVP_P3_A REAL  NOT NULL ,
DVP_P3_B REAL  NOT NULL ,
DVP_Q1_A REAL  NOT NULL ,
DVP_Q1_B REAL  NOT NULL ,
DVP_Q2_A REAL  NOT NULL ,
DVP_Q2_B REAL  NOT NULL ,
DVP_Q3_A REAL  NOT NULL ,
DVP_Q3_B REAL  NOT NULL ,
DVP_TP_A REAL  NOT NULL ,
DVP_TP_B REAL  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (DVP_KV_A)
);
COMMENT ON TABLE DPE IS 'Desvios padrão do estimador';
COMMENT ON COLUMN DPE.DVP_KV_A IS 'Desvio padrão 1 para medidas de modulo de tensão (pu)';
COMMENT ON COLUMN DPE.DVP_KV_B IS 'Desvio padrão 2 para medidas de modulo de tensão (pu)';
COMMENT ON COLUMN DPE.DVP_AF_A IS 'Desvio padrão 1 para medidas de angulo de tensão (radianos)';
COMMENT ON COLUMN DPE.DVP_AF_B IS 'Desvio padrão 2 para medidas de angulo de tensão (radianos)';
COMMENT ON COLUMN DPE.DVP_P1_A IS 'Desvio padrão 1 para medidas de injeção de potência ativa em carga (mw)';
COMMENT ON COLUMN DPE.DVP_P1_B IS 'Desvio padrão 2 para medidas de injeção de potência ativa em carga (mw)';
COMMENT ON COLUMN DPE.DVP_P2_A IS 'Desvio padrão 1 para medidas de injeção de potência ativa em geração (mw)';
COMMENT ON COLUMN DPE.DVP_P2_B IS 'Desvio padrão 2 para medidas de injeção de potência ativa em geração (mw)';
COMMENT ON COLUMN DPE.DVP_P3_A IS 'Desvio padrão 1 para medidas de fluxo de potência ativa (mw)';
COMMENT ON COLUMN DPE.DVP_P3_B IS 'Desvio padrão 2 para medidas de fluxo de potência ativa (mw)';
COMMENT ON COLUMN DPE.DVP_Q1_A IS 'Desvio padrão 1 para medidas de injeção de potência reativa em carga (mvar)';
COMMENT ON COLUMN DPE.DVP_Q1_B IS 'Desvio padrão 2 para medidas de injeção de potência reativa em carga (mvar)';
COMMENT ON COLUMN DPE.DVP_Q2_A IS 'Desvio padrão 1 para medidas de injeção de potência reativa em geração (mvar)';
COMMENT ON COLUMN DPE.DVP_Q2_B IS 'Desvio padrão 2 para medidas de injeção de potência reativa em geração (mvar)';
COMMENT ON COLUMN DPE.DVP_Q3_A IS 'Desvio padrão 1 para medidas de fluxo de potência reativa (mvar)';
COMMENT ON COLUMN DPE.DVP_Q3_B IS 'Desvio padrão 2 para medidas de fluxo de potência reativa (mvar)';
COMMENT ON COLUMN DPE.DVP_TP_A IS 'Desvio padrão 1 para medidas de tap (pu)';
COMMENT ON COLUMN DPE.DVP_TP_B IS 'Desvio padrão 2 para medidas de tap (pu)';
COMMENT ON COLUMN DPE.CMT IS 'Comentario';
COMMENT ON COLUMN DPE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE DTS;
CREATE TABLE DTS (
DTIP CHAR (15) NOT NULL CHECK (DTIP IN ('DIA_UTIL', 'DOMINGO', 'DOMINGO_FERIADO', 'FIM_SEMANA', 'QUARTA', 'QUINTA', 'SABADO', 'SEGUNDA', 'SEXTA', 'TERCA')),
ID CHAR (7) NOT NULL CHECK (ID IN ('DOMINGO', 'QUARTA', 'QUINTA', 'SABADO', 'SEGUNDA', 'SEXTA', 'TERCA')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE DTS IS 'Dias Típicos Semanais';
COMMENT ON COLUMN DTS.DTIP IS 'Tipo do dia da semana';
COMMENT ON COLUMN DTS.ID IS 'Identificador do dia da semana';
COMMENT ON COLUMN DTS.CMT IS 'Comentario';
COMMENT ON COLUMN DTS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE E2M;
CREATE TABLE E2M (
IDPTO CHAR (32) NOT NULL ,
MAP CHAR (12) NOT NULL ,
TIPO CHAR (3) DEFAULT 'PAS' CHECK (TIPO IN ('OCR', 'PAS', 'PDS', 'PTS')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (IDPTO, TIPO, MAP)
);
COMMENT ON TABLE E2M IS 'Relacionamento Ponto TR ou Ocorrência X MAP';
COMMENT ON COLUMN E2M.IDPTO IS 'Identificador do ponto TR ou Ocorrência';
COMMENT ON COLUMN E2M.MAP IS 'Macro alarme associado';
COMMENT ON COLUMN E2M.TIPO IS 'Tipo do ponto aquisitado';
COMMENT ON COLUMN E2M.CMT IS 'Comentario';
COMMENT ON COLUMN E2M.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE EANO;
CREATE TABLE EANO (
DATA_FIM CHAR (19)  ,
DATA_INI CHAR (19)  ,
ID CHAR (9) NOT NULL CHECK (ID IN ('INVERNO', 'OUTONO', 'PRIMAVERA', 'VERAO')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE EANO IS 'Estação do ano';
COMMENT ON COLUMN EANO.DATA_FIM IS 'Data de término da estação do ano';
COMMENT ON COLUMN EANO.DATA_INI IS 'Data de início da estação do ano';
COMMENT ON COLUMN EANO.ID IS 'Identificador da estação do ano';
COMMENT ON COLUMN EANO.CMT IS 'Comentario';
COMMENT ON COLUMN EANO.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE ECA;
CREATE TABLE ECA (
CAG CHAR (6) NOT NULL ,
ID CHAR (6) NOT NULL ,
KCNI REAL  NOT NULL ,
KFC REAL  NOT NULL ,
LSUBD REAL  NOT NULL ,
TEBIAS REAL  NOT NULL ,
TLAG REAL  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE ECA IS 'Parâmetros do Erro de Controle de Área do CAG';
COMMENT ON COLUMN ECA.CAG IS 'Identificador da instância da tabela CAG associada';
COMMENT ON COLUMN ECA.ID IS 'Identificador';
COMMENT ON COLUMN ECA.KCNI IS 'Peso no ECA do desvio de intercâmbio';
COMMENT ON COLUMN ECA.KFC IS 'Peso no ECA do desvio de frequência';
COMMENT ON COLUMN ECA.LSUBD IS 'Limite superior da média de 10 minutos do ECA';
COMMENT ON COLUMN ECA.TEBIAS IS 'Bias do erro de tempo do sistema';
COMMENT ON COLUMN ECA.TLAG IS 'Constante de tempo do intercâmbio líquido';
COMMENT ON COLUMN ECA.CMT IS 'Comentario';
COMMENT ON COLUMN ECA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE ELE;
CREATE TABLE ELE (
AOR CHAR (20)  ,
CIA CHAR (10)  ,
ELO CHAR (25) NOT NULL ,
EST CHAR (15) NOT NULL ,
ID CHAR (25) NOT NULL ,
LSFI REAL  NOT NULL CHECK (LSFI >= 0 AND LSFI <= 9999),
LSOP REAL  NOT NULL CHECK (LSOP >= 0 AND LSOP <= 9999),
NOME CHAR (46)  ,
R REAL  NOT NULL CHECK (R >= 0. AND R <= 200.),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE ELE IS 'Eletrodo';
COMMENT ON COLUMN ELE.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN ELE.CIA IS 'Companhia associada';
COMMENT ON COLUMN ELE.ELO IS 'Identificador do Elo DC';
COMMENT ON COLUMN ELE.EST IS 'Estação a que pertence';
COMMENT ON COLUMN ELE.ID IS 'Identificador';
COMMENT ON COLUMN ELE.LSFI IS 'Limite físico superior de corrente em amperes';
COMMENT ON COLUMN ELE.LSOP IS 'Limite operativo superior de corrente em amperes';
COMMENT ON COLUMN ELE.NOME IS 'Nome';
COMMENT ON COLUMN ELE.R IS 'Resistência em ohms';
COMMENT ON COLUMN ELE.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN ELE.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN ELE.CMT IS 'Comentario';
COMMENT ON COLUMN ELE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE ELO;
CREATE TABLE ELO (
ACO CHAR (10)  ,
ID CHAR (25) NOT NULL ,
MODO CHAR (6) DEFAULT 'NORMAL' CHECK (MODO IN ('HIMVAR', 'NORMAL')),
NOME CHAR (63)  ,
NUM_BAR_L_INV_N INT  DEFAULT 0 ,
NUM_BAR_L_INV_P INT  DEFAULT 0 ,
NUM_BAR_L_RET_N INT  DEFAULT 0 ,
NUM_BAR_L_RET_P INT  DEFAULT 0 ,
NUM_BAR_N_INV_N INT  DEFAULT 0 ,
NUM_BAR_N_INV_P INT  DEFAULT 0 ,
NUM_BAR_N_RET_N INT  DEFAULT 0 ,
NUM_BAR_N_RET_P INT  DEFAULT 0 ,
NUM_CNV_INV_NEG INT  DEFAULT 0 ,
NUM_CNV_INV_POS INT  DEFAULT 0 ,
NUM_CNV_RET_NEG INT  DEFAULT 0 ,
NUM_CNV_RET_POS INT  DEFAULT 0 ,
NUM_ELO_NEG INT  DEFAULT 0 ,
NUM_ELO_POS INT  DEFAULT 0 ,
SBASE REAL  DEFAULT 100. ,
TIPO CHAR (12) DEFAULT 'BIPOLAR' CHECK (TIPO IN ('BACK_TO_BACK', 'BIPOLAR', 'MONOPOLAR')),
TPCONF CHAR (8) DEFAULT 'ESTATICO' CHECK (TPCONF IN ('DINAMICO', 'ESTATICO')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE ELO IS 'Elo DC';
COMMENT ON COLUMN ELO.ACO IS 'Área de controle associada do ELO DC';
COMMENT ON COLUMN ELO.ID IS 'Identificador do ELO DC';
COMMENT ON COLUMN ELO.MODO IS 'Modo de operação do elo DC';
COMMENT ON COLUMN ELO.NOME IS 'Nome';
COMMENT ON COLUMN ELO.NUM_BAR_L_INV_N IS 'Número da Barra DC (lado da linha) associada ao Inversor do polo Negativo do Elo DC';
COMMENT ON COLUMN ELO.NUM_BAR_L_INV_P IS 'Número da Barra DC (lado da linha) associada ao Inversor do polo Positivo do Elo DC';
COMMENT ON COLUMN ELO.NUM_BAR_L_RET_N IS 'Número da Barra DC (lado da linha) associada ao Retificador do polo Negativo do Elo DC';
COMMENT ON COLUMN ELO.NUM_BAR_L_RET_P IS 'Número da Barra DC (lado da linha) associada ao Retificador do polo Positivo do Elo DC';
COMMENT ON COLUMN ELO.NUM_BAR_N_INV_N IS 'Número da Barra DC Neutra associada ao Inversor do polo Negativo do Elo DC';
COMMENT ON COLUMN ELO.NUM_BAR_N_INV_P IS 'Número da Barra DC Neutra associada ao Inversor do polo Positivo do Elo DC';
COMMENT ON COLUMN ELO.NUM_BAR_N_RET_N IS 'Número da Barra DC Neutra associada ao Retificador do polo Negativo do Elo DC';
COMMENT ON COLUMN ELO.NUM_BAR_N_RET_P IS 'Número da Barra DC Neutra associada ao Retificador do polo Positivo do Elo DC';
COMMENT ON COLUMN ELO.NUM_CNV_INV_NEG IS 'Número do Conversor Inversor associado ao polo Negativo do Elo DC';
COMMENT ON COLUMN ELO.NUM_CNV_INV_POS IS 'Número do Conversor Inversor associado ao polo Positivo do Elo DC';
COMMENT ON COLUMN ELO.NUM_CNV_RET_NEG IS 'Número do Conversor Retificador associado ao polo Negativo do Elo DC';
COMMENT ON COLUMN ELO.NUM_CNV_RET_POS IS 'Número do Conversor Retificador associado ao polo Positivo do Elo DC';
COMMENT ON COLUMN ELO.NUM_ELO_NEG IS 'Número do Elo monopolar associado ao polo Negativo do Elo DC';
COMMENT ON COLUMN ELO.NUM_ELO_POS IS 'Número do Elo monopolar associado ao polo Positivo do Elo DC';
COMMENT ON COLUMN ELO.SBASE IS 'Base de potência de cálculos dos parâmetros do ELO DC em MW';
COMMENT ON COLUMN ELO.TIPO IS 'Tipo do elo DC';
COMMENT ON COLUMN ELO.TPCONF IS 'Tipo de configuração do elo DC';
COMMENT ON COLUMN ELO.CMT IS 'Comentario';
COMMENT ON COLUMN ELO.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE ENM;
CREATE TABLE ENM (
ENPRI INT  DEFAULT 1 ,
ENSEC INT  DEFAULT 3 ,
ID CHAR (16) NOT NULL ,
JANLK INT  DEFAULT 3 ,
MUL CHAR (16) NOT NULL ,
NOME CHAR (50)  ,
ORDEM INT  NOT NULL ,
PARN1 INT  DEFAULT 256 ,
PARN2 INT  DEFAULT 3 ,
PART1 INT  DEFAULT 2 ,
TECON INT  DEFAULT 10 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE ENM IS 'Enlace de multiligação';
COMMENT ON COLUMN ENM.ENPRI IS 'Endereço A da recomendação X25';
COMMENT ON COLUMN ENM.ENSEC IS 'Endereço B da recomendação X25';
COMMENT ON COLUMN ENM.ID IS 'Identificador';
COMMENT ON COLUMN ENM.JANLK IS 'Janela K da recomendação X25';
COMMENT ON COLUMN ENM.MUL IS 'Multiligação do canal';
COMMENT ON COLUMN ENM.NOME IS 'Nome';
COMMENT ON COLUMN ENM.ORDEM IS 'Ordem do enlace de multiligação';
COMMENT ON COLUMN ENM.PARN1 IS 'Parâmetro N1 da recomendação X25';
COMMENT ON COLUMN ENM.PARN2 IS 'Parâmetro N2 da recomendação X25';
COMMENT ON COLUMN ENM.PART1 IS 'Parâmetro T1 da recomendação X25';
COMMENT ON COLUMN ENM.TECON IS 'Temporizador para desistir de (des)conexão';
COMMENT ON COLUMN ENM.CMT IS 'Comentario';
COMMENT ON COLUMN ENM.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE ENU;
CREATE TABLE ENU (
CXU CHAR (16) NOT NULL ,
ID CHAR (16) NOT NULL ,
NOME CHAR (50)  ,
ORDEM CHAR (3) NOT NULL CHECK (ORDEM IN ('PRI', 'REV')),
TDESC INT  DEFAULT 3 ,
TRANS INT  DEFAULT 50 ,
VLUTR INT  DEFAULT 2400 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE ENU IS 'Enlace de conexão c/ utr';
COMMENT ON COLUMN ENU.CXU IS 'Conexão do enlace';
COMMENT ON COLUMN ENU.ID IS 'Identificador';
COMMENT ON COLUMN ENU.NOME IS 'Nome';
COMMENT ON COLUMN ENU.ORDEM IS 'Ordem de prioridade para utilização';
COMMENT ON COLUMN ENU.TDESC IS 'Descanso para reinício';
COMMENT ON COLUMN ENU.TRANS IS 'Temporizador de transmissão';
COMMENT ON COLUMN ENU.VLUTR IS 'Velocidade do canal';
COMMENT ON COLUMN ENU.CMT IS 'Comentario';
COMMENT ON COLUMN ENU.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE EST;
CREATE TABLE EST (
ID CHAR (15) NOT NULL ,
INS CHAR (12) NOT NULL ,
LIALE REAL  DEFAULT -999999 ,
LIAMA REAL  DEFAULT -999999 ,
LIAME REAL  DEFAULT -999999 ,
LIAMI REAL  DEFAULT -999999 ,
LIAPE REAL  DEFAULT -999999 ,
LIELE REAL  DEFAULT -999999 ,
LIEMA REAL  DEFAULT -999999 ,
LIEME REAL  DEFAULT -999999 ,
LIEMI REAL  DEFAULT -999999 ,
LIEPE REAL  DEFAULT -999999 ,
LIULE REAL  DEFAULT -999999 ,
LIUMA REAL  DEFAULT -999999 ,
LIUME REAL  DEFAULT -999999 ,
LIUMI REAL  DEFAULT -999999 ,
LIUPE REAL  DEFAULT -999999 ,
LSALE REAL  DEFAULT 999999 ,
LSAMA REAL  DEFAULT 999999 ,
LSAME REAL  DEFAULT 999999 ,
LSAMI REAL  DEFAULT 999999 ,
LSAPE REAL  DEFAULT 999999 ,
LSELE REAL  DEFAULT 999999 ,
LSEMA REAL  DEFAULT 999999 ,
LSEME REAL  DEFAULT 999999 ,
LSEMI REAL  DEFAULT 999999 ,
LSEPE REAL  DEFAULT 999999 ,
LSULE REAL  DEFAULT 999999 ,
LSUMA REAL  DEFAULT 999999 ,
LSUME REAL  DEFAULT 999999 ,
LSUMI REAL  DEFAULT 999999 ,
LSUPE REAL  DEFAULT 999999 ,
NOME CHAR (37)  ,
PTC CHAR (20)  ,
VNOM REAL  NOT NULL ,
AFP CHAR (4)  ,
AOR CHAR (20)  ,
ARRANJO CHAR (13) DEFAULT 'OUTROS' CHECK (ARRANJO IN ('ANEL', 'BARRA_DUPLA', 'BARRA_SIMPLES', 'BARRA_TRIPLA', 'DISJ_MEIO', 'OUTROS', 'PRINC_TRANS')),
EE CHAR (3) DEFAULT 'SIM' CHECK (EE IN ('NAO', 'SIM')),
FPLEV REAL  DEFAULT 0. CHECK (FPLEV >= -1 AND FPLEV <= 1),
FPMED REAL  DEFAULT 0. CHECK (FPMED >= -1 AND FPMED <= 1),
FPPES REAL  DEFAULT 0. CHECK (FPPES >= -1 AND FPPES <= 1),
FQPLEV REAL  DEFAULT 0. ,
FQPMED REAL  DEFAULT 0. ,
FQPPES REAL  DEFAULT 0. ,
FREQ REAL  DEFAULT 0. ,
GBT CHAR (2)  ,
LIFI REAL  DEFAULT 0. ,
LIOP REAL  DEFAULT 0. ,
LSFI REAL  DEFAULT 0. ,
LSOP REAL  DEFAULT 0. ,
NOMEBAR CHAR (12)  ,
NUMBAR INT  DEFAULT 0 ,
TIPO CHAR (2) DEFAULT 'AC' CHECK (TIPO IN ('AC', 'DC')),
TPMON CHAR (9) DEFAULT 'MONIT' CHECK (TPMON IN ('MONIT', 'NAO_MONIT')),
VBASE REAL  DEFAULT 0 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE EST IS 'Estação';
COMMENT ON COLUMN EST.ID IS 'Identificador';
COMMENT ON COLUMN EST.INS IS 'Instalação';
COMMENT ON COLUMN EST.LIALE IS 'Limite inferior de advertência de tensão - carga leve';
COMMENT ON COLUMN EST.LIAMA IS 'Limite inferior de advertência de tensão - carga máxima';
COMMENT ON COLUMN EST.LIAME IS 'Limite inferior de advertência de tensão - carga média';
COMMENT ON COLUMN EST.LIAMI IS 'Limite inferior de advertência de tensão - carga mínima';
COMMENT ON COLUMN EST.LIAPE IS 'Limite inferior de advertência de tensão - carga pesada';
COMMENT ON COLUMN EST.LIELE IS 'Limite inferior de escala de tensão - carga leve';
COMMENT ON COLUMN EST.LIEMA IS 'Limite inferior de escala de tensão - carga máxima';
COMMENT ON COLUMN EST.LIEME IS 'Limite inferior de escala de tensão - carga média';
COMMENT ON COLUMN EST.LIEMI IS 'Limite inferior de escala de tensão - carga mínima';
COMMENT ON COLUMN EST.LIEPE IS 'Limite inferior de escala de tensão - carga pesada';
COMMENT ON COLUMN EST.LIULE IS 'Limite inferior de urgência de tensão - carga leve';
COMMENT ON COLUMN EST.LIUMA IS 'Limite inferior de urgência de tensão - carga máxima';
COMMENT ON COLUMN EST.LIUME IS 'Limite inferior de urgência de tensão - carga média';
COMMENT ON COLUMN EST.LIUMI IS 'Limite inferior de urgência de tensão - carga mínima';
COMMENT ON COLUMN EST.LIUPE IS 'Limite inferior de urgência de tensão - carga pesada';
COMMENT ON COLUMN EST.LSALE IS 'Limite superior de advertência de tensão - carga leve';
COMMENT ON COLUMN EST.LSAMA IS 'Limite superior de advertência de tensão - carga máxima';
COMMENT ON COLUMN EST.LSAME IS 'Limite superior de advertência de tensão - carga média';
COMMENT ON COLUMN EST.LSAMI IS 'Limite superior de advertência de tensão - carga mínima';
COMMENT ON COLUMN EST.LSAPE IS 'Limite superior de advertência de tensão - carga pesada';
COMMENT ON COLUMN EST.LSELE IS 'Limite superior de escala de tensão - carga leve';
COMMENT ON COLUMN EST.LSEMA IS 'Limite superior de escala de tensão - carga máxima';
COMMENT ON COLUMN EST.LSEME IS 'Limite superior de escala de tensão - carga média';
COMMENT ON COLUMN EST.LSEMI IS 'Limite superior de escala de tensão - carga mínima';
COMMENT ON COLUMN EST.LSEPE IS 'Limite superior de escala de tensão - carga pesada';
COMMENT ON COLUMN EST.LSULE IS 'Limite superior de urgência de tensão - carga leve';
COMMENT ON COLUMN EST.LSUMA IS 'Limite superior de urgência de tensão - carga máxima';
COMMENT ON COLUMN EST.LSUME IS 'Limite superior de urgência de tensão - carga média';
COMMENT ON COLUMN EST.LSUMI IS 'Limite superior de urgência de tensão - carga mínima';
COMMENT ON COLUMN EST.LSUPE IS 'Limite superior de urgência de tensão - carga pesada';
COMMENT ON COLUMN EST.NOME IS 'Nome da estação';
COMMENT ON COLUMN EST.PTC IS 'Ocorrência da tabela PTC associada a estação para atualização de limites de equipamento';
COMMENT ON COLUMN EST.VNOM IS 'Tensão nominal';
COMMENT ON COLUMN EST.AFP IS 'Número da área elétrica para fluxo de potência associada a estação';
COMMENT ON COLUMN EST.AOR IS 'Identificador da AOR associada a estação';
COMMENT ON COLUMN EST.ARRANJO IS 'Arranjo do barramento da estação';
COMMENT ON COLUMN EST.EE IS 'Indicador para inclusão da estação no processo de estimação de estado';
COMMENT ON COLUMN EST.FPLEV IS 'Fator de participação da carga da estação em relação a carga da companhia para o período de carga Leve (pu)';
COMMENT ON COLUMN EST.FPMED IS 'Fator de participação da carga da estação em relação a carga da companhia para o período de carga Média (pu)';
COMMENT ON COLUMN EST.FPPES IS 'Fator de participação da carga da estação em relação a carga da companhia para o período de carga Pesada (pu)';
COMMENT ON COLUMN EST.FQPLEV IS 'Relação entre a potência reativa e a potência ativa da carga para o período de carga Leve (MVAR/MW)';
COMMENT ON COLUMN EST.FQPMED IS 'Relação entre a potência reativa e a potência ativa da carga para o período de carga Média (MVAR/MW)';
COMMENT ON COLUMN EST.FQPPES IS 'Relação entre a potência reativa e a potência ativa da carga para o período de carga Pesada (MVAR/MW)';
COMMENT ON COLUMN EST.FREQ IS 'Frequência de operação';
COMMENT ON COLUMN EST.GBT IS 'Grupo base de tensão associado a estação';
COMMENT ON COLUMN EST.LIFI IS 'Limite físico inferior de tensão';
COMMENT ON COLUMN EST.LIOP IS 'Limite operativo inferior de tensão';
COMMENT ON COLUMN EST.LSFI IS 'Limite físico superior de tensão';
COMMENT ON COLUMN EST.LSOP IS 'Limite operativo superior de tensão';
COMMENT ON COLUMN EST.NOMEBAR IS 'Nome da barra associado a estação';
COMMENT ON COLUMN EST.NUMBAR IS 'Número da barra associado a estação';
COMMENT ON COLUMN EST.TIPO IS 'Tipo da estação';
COMMENT ON COLUMN EST.TPMON IS 'Tipo de monitoração';
COMMENT ON COLUMN EST.VBASE IS 'Tensão base';
COMMENT ON COLUMN EST.CMT IS 'Comentario';
COMMENT ON COLUMN EST.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE ESTM;
CREATE TABLE ESTM (
ID CHAR (23) NOT NULL ,
RIO CHAR (23)  ,
TIPO CHAR (13) NOT NULL CHECK (TIPO IN ('FLUVIOMETRICA', 'METEREOLOGICA', 'PLUVIOMETRICA')),
UFE CHAR (6)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE ESTM IS 'Estação Meteorológica';
COMMENT ON COLUMN ESTM.ID IS 'Identificador';
COMMENT ON COLUMN ESTM.RIO IS 'Rio associado à estação meteorológica (fluviométrica)';
COMMENT ON COLUMN ESTM.TIPO IS 'Tipo da estação meteorológica';
COMMENT ON COLUMN ESTM.UFE IS 'Unidade federativa associada à estação meteorológica (pluviométrica / meteorológica)';
COMMENT ON COLUMN ESTM.CMT IS 'Comentario';
COMMENT ON COLUMN ESTM.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE FASOR;
CREATE TABLE FASOR (
ID CHAR (38) NOT NULL ,
NOME CHAR (50) NOT NULL ,
PAS_ANG CHAR (32) NOT NULL ,
PAS_AOSCANG CHAR (32)  ,
PAS_AOSCMAG CHAR (32)  ,
PAS_DOSCANG CHAR (32)  ,
PAS_DOSCMAG CHAR (32)  ,
PAS_FOSCANG CHAR (32)  ,
PAS_FOSCMAG CHAR (32)  ,
PAS_MAG CHAR (32) NOT NULL ,
PMU CHAR (32) NOT NULL ,
SELSOM CHAR (3) DEFAULT 'NAO' CHECK (SELSOM IN ('NAO', 'SIM')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE FASOR IS 'Medida Fasorial';
COMMENT ON COLUMN FASOR.ID IS 'Identificador';
COMMENT ON COLUMN FASOR.NOME IS 'Nome';
COMMENT ON COLUMN FASOR.PAS_ANG IS 'Id do PAS com o ângulo do fasor';
COMMENT ON COLUMN FASOR.PAS_AOSCANG IS 'Id do PAS associado a amplitude da oscilação do ângulo do fasor';
COMMENT ON COLUMN FASOR.PAS_AOSCMAG IS 'Id do PAS associado a amplitude da oscilação da magnitude do fasor';
COMMENT ON COLUMN FASOR.PAS_DOSCANG IS 'Id do PAS associado a amortecimento da oscilação do ângulo do fasor';
COMMENT ON COLUMN FASOR.PAS_DOSCMAG IS 'Id do PAS associado a amortecimento da oscilação da magnitude do fasor';
COMMENT ON COLUMN FASOR.PAS_FOSCANG IS 'Id do PAS associado a frequência da oscilação do ângulo do fasor';
COMMENT ON COLUMN FASOR.PAS_FOSCMAG IS 'Id do PAS associado a frequência da oscilação da magnitude do fasor';
COMMENT ON COLUMN FASOR.PAS_MAG IS 'Id do PAS com a magnitude do fasor';
COMMENT ON COLUMN FASOR.PMU IS 'Id da PMU a qual o FASOR pertence';
COMMENT ON COLUMN FASOR.SELSOM IS 'Indicador de Fasor selecionado para monitoração de oscilação (SOM)';
COMMENT ON COLUMN FASOR.CMT IS 'Comentario';
COMMENT ON COLUMN FASOR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE FLG;
CREATE TABLE FLG (
CAG CHAR (6) NOT NULL ,
CYCFLG CHAR (3) NOT NULL CHECK (CYCFLG IN ('NAO', 'SIM')),
EACON CHAR (3) NOT NULL CHECK (EACON IN ('NAO', 'SIM')),
ID CHAR (6) NOT NULL ,
TRIPFM CHAR (3) NOT NULL CHECK (TRIPFM IN ('NAO', 'SIM')),
TRIPNM CHAR (3) NOT NULL CHECK (TRIPNM IN ('NAO', 'SIM')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE FLG IS 'Flags de controle do CAG';
COMMENT ON COLUMN FLG.CAG IS 'Identificador da instância da tabela CAG associada';
COMMENT ON COLUMN FLG.CYCFLG IS 'Habilita a deteção do estado de ruído no controle adaptativo';
COMMENT ON COLUMN FLG.EACON IS 'Habilita a execução do controle adaptativo';
COMMENT ON COLUMN FLG.ID IS 'Identificador';
COMMENT ON COLUMN FLG.TRIPFM IS 'Habilita a condição de trip do CAG por desvio de frequência';
COMMENT ON COLUMN FLG.TRIPNM IS 'Habilita a condição de trip do CAG por desvio de intercâmbio';
COMMENT ON COLUMN FLG.CMT IS 'Comentario';
COMMENT ON COLUMN FLG.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE FRD;
CREATE TABLE FRD (
ABRANGENCIA CHAR (9) DEFAULT 'NACIONAL' CHECK (ABRANGENCIA IN ('ESTADUAL', 'MUNICIPAL', 'NACIONAL', 'REGIONAL')),
ID CHAR (10) NOT NULL ,
NOME CHAR (50) NOT NULL ,
TIPO CHAR (5) DEFAULT 'FIXO' CHECK (TIPO IN ('FIXO', 'MOVEL')),
UFE CHAR (6)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE FRD IS 'Feriados e Dias Especiais';
COMMENT ON COLUMN FRD.ABRANGENCIA IS 'Abrangencia do feriado';
COMMENT ON COLUMN FRD.ID IS 'Identificador (data) do feriado (dd/mm/aaaa)';
COMMENT ON COLUMN FRD.NOME IS 'Descrição do feriado';
COMMENT ON COLUMN FRD.TIPO IS 'Tipo do feriado';
COMMENT ON COLUMN FRD.UFE IS 'Unidade federativa associada ao feriado estadual';
COMMENT ON COLUMN FRD.CMT IS 'Comentario';
COMMENT ON COLUMN FRD.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE FRD_PAS;
CREATE TABLE FRD_PAS (
FRD CHAR (10) NOT NULL ,
PAS CHAR (32) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (FRD, PAS)
);
COMMENT ON TABLE FRD_PAS IS 'Relacionamento entre Feriado/Dia Especial e Ponto de Medida Analogica do Previsor de Carga';
COMMENT ON COLUMN FRD_PAS.FRD IS 'Identificador (data) do feriado (dd/mm/aaaa)';
COMMENT ON COLUMN FRD_PAS.PAS IS 'Identificador do Ponto de media analogica associado ao Previsor de Carga';
COMMENT ON COLUMN FRD_PAS.CMT IS 'Comentario';
COMMENT ON COLUMN FRD_PAS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE FXG;
CREATE TABLE FXG (
MODELO CHAR (21) NOT NULL ,
RTYPE CHAR (4) NOT NULL CHECK (RTYPE IN ('NORM', 'NREC', 'PROB')),
RUPLIM REAL  NOT NULL CHECK (RUPLIM >= 0. AND RUPLIM <= 12000.),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (MODELO, RUPLIM, RTYPE)
);
COMMENT ON TABLE FXG IS 'Faixas de operação das unidades geradoras para o CAG';
COMMENT ON COLUMN FXG.MODELO IS 'Modelo/ano perfil da unidade geradora';
COMMENT ON COLUMN FXG.RTYPE IS 'Tipo da faixa de operação';
COMMENT ON COLUMN FXG.RUPLIM IS 'Limite superior de potência ativa da faixa de operação';
COMMENT ON COLUMN FXG.CMT IS 'Comentario';
COMMENT ON COLUMN FXG.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GBT;
CREATE TABLE GBT (
COR CHAR (25) NOT NULL ,
ID CHAR (2) NOT NULL ,
VBASE REAL  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GBT IS 'Grupo Base de Tensão';
COMMENT ON COLUMN GBT.COR IS 'Identificador da cor associada ao grupo base de tensão';
COMMENT ON COLUMN GBT.ID IS 'Identificador do grupo base de tensão';
COMMENT ON COLUMN GBT.VBASE IS 'Tensão base do grupo base de tensão';
COMMENT ON COLUMN GBT.CMT IS 'Comentario';
COMMENT ON COLUMN GBT.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GCA;
CREATE TABLE GCA (
CIA CHAR (10)  ,
ID CHAR (23) NOT NULL ,
SLAR CHAR (10)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GCA IS 'Grupo de carga';
COMMENT ON COLUMN GCA.CIA IS 'Companhia associada';
COMMENT ON COLUMN GCA.ID IS 'Identificador';
COMMENT ON COLUMN GCA.SLAR IS 'Sub-área de carga associada ao grupo de carga';
COMMENT ON COLUMN GCA.CMT IS 'Comentario';
COMMENT ON COLUMN GCA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GR2ACT;
CREATE TABLE GR2ACT (
ACAO CHAR (40) NOT NULL ,
GRACT CHAR (32) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ACAO, GRACT)
);
COMMENT ON TABLE GR2ACT IS 'Relacionamento MxN entre as tabelas Ação e Grupo de Ações';
COMMENT ON COLUMN GR2ACT.ACAO IS 'Ação associada à instância de GR2ACT';
COMMENT ON COLUMN GR2ACT.GRACT IS 'Grupo de ações associado à instância de GR2ACT';
COMMENT ON COLUMN GR2ACT.CMT IS 'Comentario';
COMMENT ON COLUMN GR2ACT.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GRACT;
CREATE TABLE GRACT (
ID CHAR (32) NOT NULL ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GRACT IS 'Grupo de Ações';
COMMENT ON COLUMN GRACT.ID IS 'Identificador';
COMMENT ON COLUMN GRACT.NOME IS 'Nome';
COMMENT ON COLUMN GRACT.CMT IS 'Comentario';
COMMENT ON COLUMN GRACT.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GRCMP;
CREATE TABLE GRCMP (
ACAO CHAR (256)  ,
CORTXT CHAR (25)  ,
GRUPO CHAR (32) NOT NULL ,
ORDEM1 INT  DEFAULT 0 ,
ORDEM2 INT  DEFAULT 0 ,
PARAM CHAR (256)  ,
PNT CHAR (32)  ,
TPPNT CHAR (5)  CHECK (TPPNT IN ('', 'CGS', 'GRUPO', 'PAS', 'PDS', 'PTS')),
TPSIMB CHAR (17)  CHECK (TPSIMB IN ('', 'CHECK', 'CHECK_INV', 'CHECK_SIMPLES', 'CHECK_SIMPLES_INV', 'CIRC', 'CIRC_INV', 'CIRC_SIMPLES', 'CIRC_SIMPLES_INV', 'ESTADO', 'FIGURA', 'QUAD', 'QUAD_INV', 'QUAD_SIMPLES', 'QUAD_SIMPLES_INV')),
TPTXT CHAR (4)  CHECK (TPTXT IN ('', 'ID', 'NOME', 'TXT')),
TXT CHAR (512)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (GRUPO, TPPNT, PNT, ORDEM1, ORDEM2)
);
COMMENT ON TABLE GRCMP IS 'Componente para diálogo automático';
COMMENT ON COLUMN GRCMP.ACAO IS 'Ação associada ao componente';
COMMENT ON COLUMN GRCMP.CORTXT IS 'Cor do texto associado ao componente';
COMMENT ON COLUMN GRCMP.GRUPO IS 'Identificador do grupo associado ao componente para diálogo automático';
COMMENT ON COLUMN GRCMP.ORDEM1 IS 'Primeiro nível de ordem do componente';
COMMENT ON COLUMN GRCMP.ORDEM2 IS 'Segundo nível de ordem do componente';
COMMENT ON COLUMN GRCMP.PARAM IS 'Parâmetros associados ao componente';
COMMENT ON COLUMN GRCMP.PNT IS 'Identificador do recurso associado ao componente para diálogo automático';
COMMENT ON COLUMN GRCMP.TPPNT IS 'Tipo do recurso associado ao componente para diálogo automático';
COMMENT ON COLUMN GRCMP.TPSIMB IS 'Modo de apresentação de componente digital';
COMMENT ON COLUMN GRCMP.TPTXT IS 'Tipo de texto associado ao componente';
COMMENT ON COLUMN GRCMP.TXT IS 'Texto associado ao componente';
COMMENT ON COLUMN GRCMP.CMT IS 'Comentario';
COMMENT ON COLUMN GRCMP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GRP;
CREATE TABLE GRP (
ID CHAR (30) NOT NULL ,
ORDEM INT  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GRP IS 'Grupo de medidas tendenciáveis';
COMMENT ON COLUMN GRP.ID IS 'Identificador do grupo de medidas tendenciáveis';
COMMENT ON COLUMN GRP.ORDEM IS 'Ordem do grupo de medidas tendenciáveis';
COMMENT ON COLUMN GRP.CMT IS 'Comentario';
COMMENT ON COLUMN GRP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GRPOCR;
CREATE TABLE GRPOCR (
DESCR CHAR (80) NOT NULL ,
ID CHAR (23) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GRPOCR IS 'Grupo de ocorrências de alarmes';
COMMENT ON COLUMN GRPOCR.DESCR IS 'Descrição do grupo de ocorrências';
COMMENT ON COLUMN GRPOCR.ID IS 'Identificador do grupo de ocorrências';
COMMENT ON COLUMN GRPOCR.CMT IS 'Comentario';
COMMENT ON COLUMN GRPOCR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GRUPO;
CREATE TABLE GRUPO (
APLIC CHAR (15) NOT NULL ,
COR_BG CHAR (23)  ,
COR_FG CHAR (23)  ,
ID CHAR (32) NOT NULL ,
NOME CHAR (40) NOT NULL ,
PNT CHAR (32)  ,
TIPO CHAR (6) DEFAULT 'OUTROS' CHECK (TIPO IN ('CONTRL', 'DIAG', 'INTER', 'OUTROS')),
TPPNT CHAR (5)  CHECK (TPPNT IN ('', 'CGS', 'GRUPO', 'PAS', 'PDS', 'PTS')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GRUPO IS 'Grupo de componentes para diálogo automático';
COMMENT ON COLUMN GRUPO.APLIC IS 'Processo associado ao grupo de componentes para diálogo automático';
COMMENT ON COLUMN GRUPO.COR_BG IS 'Cor de fundo (background) associada ao grupo';
COMMENT ON COLUMN GRUPO.COR_FG IS 'Cor de frente (foreground) associada ao grupo';
COMMENT ON COLUMN GRUPO.ID IS 'Identificador do grupo de componentes para diálogo automático';
COMMENT ON COLUMN GRUPO.NOME IS 'Nome do grupo de componentes para diálogo automático';
COMMENT ON COLUMN GRUPO.PNT IS 'Componente principal do grupo de componentes para diálogo automático';
COMMENT ON COLUMN GRUPO.TIPO IS 'Tipo do grupo';
COMMENT ON COLUMN GRUPO.TPPNT IS 'Tipo de componente principal do grupo para diálogo automático';
COMMENT ON COLUMN GRUPO.CMT IS 'Comentario';
COMMENT ON COLUMN GRUPO.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GSD;
CREATE TABLE GSD (
ID CHAR (8) NOT NULL ,
NO1 CHAR (16) NOT NULL ,
NO2 CHAR (16) NOT NULL ,
NOME CHAR (36) NOT NULL ,
SITE CHAR (10)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GSD IS 'Gate-way SCADA';
COMMENT ON COLUMN GSD.ID IS 'Identificador';
COMMENT ON COLUMN GSD.NO1 IS 'Nó 1 do gate-way';
COMMENT ON COLUMN GSD.NO2 IS 'Nó 2 do gate-way';
COMMENT ON COLUMN GSD.NOME IS 'Nome';
COMMENT ON COLUMN GSD.SITE IS 'Site associado ao Gateway';
COMMENT ON COLUMN GSD.CMT IS 'Comentario';
COMMENT ON COLUMN GSD.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GUGE;
CREATE TABLE GUGE (
ACO CHAR (10) NOT NULL ,
ID CHAR (21) NOT NULL ,
NOME CHAR (46)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GUGE IS 'Grupo de Unidades Geradoras';
COMMENT ON COLUMN GUGE.ACO IS 'Área de controle associada ao grupo de unidades geradoras';
COMMENT ON COLUMN GUGE.ID IS 'Identificador';
COMMENT ON COLUMN GUGE.NOME IS 'Nome do grupo de unidades geradoras';
COMMENT ON COLUMN GUGE.CMT IS 'Comentario';
COMMENT ON COLUMN GUGE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GUGT;
CREATE TABLE GUGT (
ACO CHAR (10) NOT NULL ,
ID CHAR (21) NOT NULL ,
NMINUGC INT  DEFAULT 0 ,
NOME CHAR (46)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GUGT IS 'Grupo de Unidades Geradoras Térmicas';
COMMENT ON COLUMN GUGT.ACO IS 'Área de controle associada ao grupo de unidades geradoras térmicas';
COMMENT ON COLUMN GUGT.ID IS 'Identificador';
COMMENT ON COLUMN GUGT.NMINUGC IS 'Número mínimo de geradores à combustão que devem estar ligados para ativar o ciclo combinado';
COMMENT ON COLUMN GUGT.NOME IS 'Nome do grupo de unidades geradoras térmicas';
COMMENT ON COLUMN GUGT.CMT IS 'Comentario';
COMMENT ON COLUMN GUGT.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE GUSI;
CREATE TABLE GUSI (
ACO CHAR (10) NOT NULL ,
ID CHAR (12) NOT NULL ,
TIPO CHAR (7) DEFAULT 'TIPO1' CHECK (TIPO IN ('TIPO1', 'TIPO2B')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE GUSI IS 'Grupo de Usinas';
COMMENT ON COLUMN GUSI.ACO IS 'Área de controle default associada ao grupo de usinas';
COMMENT ON COLUMN GUSI.ID IS 'Identificador';
COMMENT ON COLUMN GUSI.TIPO IS 'Tipo de Operação do Grupo de Usinas';
COMMENT ON COLUMN GUSI.CMT IS 'Comentario';
COMMENT ON COLUMN GUSI.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE INP;
CREATE TABLE INP (
NOH CHAR (16) NOT NULL ,
ORDEM INT  NOT NULL ,
PRO CHAR (25) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (NOH, PRO)
);
COMMENT ON TABLE INP IS 'Instância de processo';
COMMENT ON COLUMN INP.NOH IS 'Identificador do nó';
COMMENT ON COLUMN INP.ORDEM IS 'Ordem do processo';
COMMENT ON COLUMN INP.PRO IS 'Identificador do processo';
COMMENT ON COLUMN INP.CMT IS 'Comentario';
COMMENT ON COLUMN INP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE INS;
CREATE TABLE INS (
ID CHAR (12) NOT NULL ,
NOME CHAR (54) NOT NULL ,
PTC CHAR (20)  ,
TELA CHAR (50)  ,
TIPO CHAR (3) DEFAULT 'SUB' CHECK (TIPO IN ('SUB', 'USI')),
ACO CHAR (10)  ,
AOR CHAR (20)  ,
CIA CHAR (10)  ,
FREQ REAL  DEFAULT 60. ,
LATIT REAL  DEFAULT 0 CHECK (LATIT >= -90 AND LATIT <= 90),
LONGT REAL  DEFAULT 0 CHECK (LONGT >= -180 AND LONGT <= 180),
SME CHAR (10)  ,
UFE CHAR (6)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE INS IS 'Instalação';
COMMENT ON COLUMN INS.ID IS 'Identificador';
COMMENT ON COLUMN INS.NOME IS 'Nome';
COMMENT ON COLUMN INS.PTC IS 'Ocorrência da tabela PTC que define o patamar de carga da instalação para atualização de limites de tensão';
COMMENT ON COLUMN INS.TELA IS 'Identificador da tela associada a instalação';
COMMENT ON COLUMN INS.TIPO IS 'Tipo';
COMMENT ON COLUMN INS.ACO IS 'Área de controle associada a instalação';
COMMENT ON COLUMN INS.AOR IS 'Identificador da AOR associada à instalação';
COMMENT ON COLUMN INS.CIA IS 'Companhia associada';
COMMENT ON COLUMN INS.FREQ IS 'Frequência de operação';
COMMENT ON COLUMN INS.LATIT IS 'Latitude da instalação (> 0 : ao norte do equador, < 0 : ao sul do equador)';
COMMENT ON COLUMN INS.LONGT IS 'Longitude da instalação (> 0 : a leste de Greenwich, < 0 : a oeste de Greenwich)';
COMMENT ON COLUMN INS.SME IS 'Submercado associado a instalação';
COMMENT ON COLUMN INS.UFE IS 'Unidade federativa associada à instalação';
COMMENT ON COLUMN INS.CMT IS 'Comentario';
COMMENT ON COLUMN INS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE LAR;
CREATE TABLE LAR (
ID CHAR (10) NOT NULL ,
NOME CHAR (50)  ,
SIS CHAR (10) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE LAR IS 'Área de Carga';
COMMENT ON COLUMN LAR.ID IS 'Identificador';
COMMENT ON COLUMN LAR.NOME IS 'Nome';
COMMENT ON COLUMN LAR.SIS IS 'Sistema elétrico associado à área de carga';
COMMENT ON COLUMN LAR.CMT IS 'Comentario';
COMMENT ON COLUMN LAR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE LCT;
CREATE TABLE LCT (
ID CHAR (12) NOT NULL ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE LCT IS 'Lista de Contingência';
COMMENT ON COLUMN LCT.ID IS 'Identificador da lista de contingência';
COMMENT ON COLUMN LCT.NOME IS 'Nome';
COMMENT ON COLUMN LCT.CMT IS 'Comentario';
COMMENT ON COLUMN LCT.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE LDC;
CREATE TABLE LDC (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
COMPR REAL  DEFAULT 0 ,
ELO CHAR (25) NOT NULL ,
ID CHAR (25) NOT NULL ,
INDUTANCIA REAL  DEFAULT 0 ,
INV CHAR (15) NOT NULL ,
LSFI REAL  NOT NULL CHECK (LSFI >= 0 AND LSFI <= 99999),
LSOP REAL  NOT NULL CHECK (LSOP >= 0 AND LSOP <= 99999),
NOME CHAR (61)  ,
R REAL  NOT NULL CHECK (R >= 0. AND R <= 500.),
RET CHAR (15) NOT NULL ,
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
UFE CHAR (6)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE LDC IS 'Linha DC';
COMMENT ON COLUMN LDC.AOR IS 'Identificador da AOR associada à linha DC';
COMMENT ON COLUMN LDC.ARE IS 'Identificador da área elétrica associada à linha DC';
COMMENT ON COLUMN LDC.CIA IS 'Companhia associada';
COMMENT ON COLUMN LDC.COMPR IS 'Comprimento da linha DC em KM';
COMMENT ON COLUMN LDC.ELO IS 'ELO DC a que pertence';
COMMENT ON COLUMN LDC.ID IS 'Identificador';
COMMENT ON COLUMN LDC.INDUTANCIA IS 'Indutância da linha DC em mH';
COMMENT ON COLUMN LDC.INV IS 'Estação associada ao lado inversor';
COMMENT ON COLUMN LDC.LSFI IS 'Limite físico superior de corrente em amperes';
COMMENT ON COLUMN LDC.LSOP IS 'Limite operativo superior de corrente em amperes';
COMMENT ON COLUMN LDC.NOME IS 'Nome';
COMMENT ON COLUMN LDC.R IS 'Resistência em ohms';
COMMENT ON COLUMN LDC.RET IS 'Estação associada ao lado retificador';
COMMENT ON COLUMN LDC.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN LDC.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN LDC.UFE IS 'Unidade federativa associada à linha de transmissão';
COMMENT ON COLUMN LDC.CMT IS 'Comentario';
COMMENT ON COLUMN LDC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE LIG;
CREATE TABLE LIG (
EQP CHAR (32) NOT NULL ,
EST CHAR (15) NOT NULL ,
ID CHAR (4) NOT NULL ,
TERM CHAR (8)  CHECK (TERM IN ('', 'FIXO', 'INV', 'RET', 'SEM_TAP', 'VARIAVEL')),
TPEQP CHAR (3) NOT NULL CHECK (TPEQP IN ('BCP', 'CAR', 'CNC', 'CNV', 'CRE', 'CSE', 'CSI', 'ELE', 'LDC', 'LTR', 'RAM', 'REA', 'SBA', 'TR2', 'TR3', 'UGE')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (EST, ID, TPEQP, EQP, TERM)
);
COMMENT ON TABLE LIG IS 'Ligação';
COMMENT ON COLUMN LIG.EQP IS 'Identificador do equipamento elétrico ou de manobra componente da ligação';
COMMENT ON COLUMN LIG.EST IS 'Estação a que pertence';
COMMENT ON COLUMN LIG.ID IS 'Identificador da ligação dentro da estação';
COMMENT ON COLUMN LIG.TERM IS 'Tipo do terminal do equipamento componente da ligação';
COMMENT ON COLUMN LIG.TPEQP IS 'Tipo do equipamento componente da ligação AC';
COMMENT ON COLUMN LIG.CMT IS 'Comentario';
COMMENT ON COLUMN LIG.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE LSC;
CREATE TABLE LSC (
COS CHAR (20)  ,
GSD CHAR (8) NOT NULL ,
ID CHAR (8) NOT NULL ,
MAP CHAR (12)  ,
NOME CHAR (63) NOT NULL ,
NSRV1 CHAR (16)  ,
NSRV2 CHAR (16)  ,
SITE CHAR (10)  ,
TCV CHAR (4) NOT NULL ,
TIPO CHAR (2) DEFAULT 'AA' CHECK (TIPO IN ('AA', 'AD', 'DD')),
TTP CHAR (5) NOT NULL ,
VERBD CHAR (32) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE LSC IS 'Ligação SCADA';
COMMENT ON COLUMN LSC.COS IS 'COS a que pertence em operação normal';
COMMENT ON COLUMN LSC.GSD IS 'Gate-way SCADA';
COMMENT ON COLUMN LSC.ID IS 'Identificador da ligação SCADA';
COMMENT ON COLUMN LSC.MAP IS 'Macro alarme associado';
COMMENT ON COLUMN LSC.NOME IS 'Nome da ligação';
COMMENT ON COLUMN LSC.NSRV1 IS 'Nó com o servidor 1 do transportador';
COMMENT ON COLUMN LSC.NSRV2 IS 'Nó com o servidor 2 do transportador';
COMMENT ON COLUMN LSC.SITE IS 'Site a que pertence em operação normal';
COMMENT ON COLUMN LSC.TCV IS 'Tipo de conversor de protocolo';
COMMENT ON COLUMN LSC.TIPO IS 'Tipo de ligação';
COMMENT ON COLUMN LSC.TTP IS 'Tipo de transportador de protocolo';
COMMENT ON COLUMN LSC.VERBD IS 'Versão da base de dados';
COMMENT ON COLUMN LSC.CMT IS 'Comentario';
COMMENT ON COLUMN LSC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE LTR;
CREATE TABLE LTR (
ACO CHAR (10)  ,
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
CLI CHAR (28)  ,
COMPR REAL  DEFAULT 0 ,
DE CHAR (15) NOT NULL ,
GRLIM CHAR (3) DEFAULT 'MVA' CHECK (GRLIM IN ('AMP', 'MVA')),
ID CHAR (25) NOT NULL ,
LREFP REAL  DEFAULT 999999 ,
LSADI REAL  DEFAULT 999999 ,
LSANO REAL  DEFAULT 999999 ,
LSFI REAL  DEFAULT 99999. CHECK (LSFI >= 0 AND LSFI <= 100000),
LSOP REAL  DEFAULT 99999. CHECK (LSOP >= 0 AND LSOP <= 100000),
LSUDI REAL  DEFAULT 999999 ,
LSUNO REAL  DEFAULT 999999 ,
NOME CHAR (56)  ,
PARA CHAR (15) NOT NULL ,
PENT CHAR (6)  CHECK (PENT IN ('', 'AMBOS', 'DE', 'PARA')),
R REAL  DEFAULT 0. CHECK (R >= 0. AND R <= 250.),
RISCORL CHAR (5) DEFAULT 'BAIXO' CHECK (RISCORL IN ('ALTO', 'BAIXO', 'MEDIO')),
S REAL  DEFAULT 0. CHECK (S >= 0. AND S <= 1000.),
SBASE REAL  DEFAULT 100. ,
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
UFE CHAR (6)  ,
VBASE REAL  DEFAULT 0. ,
X REAL  DEFAULT 0.01 CHECK (X >= 0.01 AND X <= 250.),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE LTR IS 'Linha de transmissão';
COMMENT ON COLUMN LTR.ACO IS 'Área de controle associada';
COMMENT ON COLUMN LTR.AOR IS 'Identificador da AOR associada à linha de transmissão AC';
COMMENT ON COLUMN LTR.ARE IS 'Identificador da área elétrica associada à linha de transmissão AC';
COMMENT ON COLUMN LTR.CIA IS 'Companhia associada';
COMMENT ON COLUMN LTR.CLI IS 'Conjunto de linhas de intercâmbio';
COMMENT ON COLUMN LTR.COMPR IS 'Comprimento da linha AC';
COMMENT ON COLUMN LTR.DE IS 'Estação do lado DE';
COMMENT ON COLUMN LTR.GRLIM IS 'Grandeza associada aos limites da linha de transmissão';
COMMENT ON COLUMN LTR.ID IS 'Identificador';
COMMENT ON COLUMN LTR.LREFP IS 'Limite de referência para verificação de plausibilidade das medidas de fluxo associadas ao equipamento (MVA)';
COMMENT ON COLUMN LTR.LSADI IS 'Limite superior de advertência no período diurno';
COMMENT ON COLUMN LTR.LSANO IS 'Limite superior de advertência no período noturno';
COMMENT ON COLUMN LTR.LSFI IS 'Limite físico superior de potência aparente';
COMMENT ON COLUMN LTR.LSOP IS 'Limite operativo superior de potência aparente';
COMMENT ON COLUMN LTR.LSUDI IS 'Limite superior de urgência no período diurno';
COMMENT ON COLUMN LTR.LSUNO IS 'Limite superior de urgência no período noturno';
COMMENT ON COLUMN LTR.NOME IS 'Nome';
COMMENT ON COLUMN LTR.PARA IS 'Estação do lado PARA';
COMMENT ON COLUMN LTR.PENT IS 'Terminal do ponto de entrega de intercâmbio';
COMMENT ON COLUMN LTR.R IS 'Resistência';
COMMENT ON COLUMN LTR.RISCORL IS 'Risco de religamento do equipamento';
COMMENT ON COLUMN LTR.S IS 'Susceptância shunt';
COMMENT ON COLUMN LTR.SBASE IS 'Potência base utilizada no cálculo dos parâmetros da linha';
COMMENT ON COLUMN LTR.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN LTR.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN LTR.UFE IS 'Unidade federativa associada à linha de transmissão';
COMMENT ON COLUMN LTR.VBASE IS 'Tensão base utilizada no cálculo dos parâmetros da linha';
COMMENT ON COLUMN LTR.X IS 'Reatância';
COMMENT ON COLUMN LTR.CMT IS 'Comentario';
COMMENT ON COLUMN LTR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE MAP;
CREATE TABLE MAP (
ID CHAR (12) NOT NULL ,
NARRT CHAR (45) NOT NULL ,
ORDEM CHAR (3) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
CONSTRAINT MAP_GRP1_unq UNIQUE (ORDEM),
PRIMARY KEY (ID)
);
COMMENT ON TABLE MAP IS 'Macro alarme';
COMMENT ON COLUMN MAP.ID IS 'Identificador';
COMMENT ON COLUMN MAP.NARRT IS 'Narrativa';
COMMENT ON COLUMN MAP.ORDEM IS 'Ordem de posicionamento do Macro Alarme na tela';
COMMENT ON COLUMN MAP.CMT IS 'Comentario';
COMMENT ON COLUMN MAP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE MODP;
CREATE TABLE MODP (
EQP CHAR (32) NOT NULL ,
FORMA_CAL CHAR (5) NOT NULL CHECK (FORMA_CAL IN ('INST', 'MEDIA')),
HORIZONTE INT  NOT NULL ,
ID CHAR (32) NOT NULL ,
INICIO INT  NOT NULL ,
INTERVALO INT  NOT NULL ,
NOME CHAR (42) NOT NULL ,
TIPO_PREV CHAR (5)  ,
TPEQP CHAR (3) NOT NULL CHECK (TPEQP IN ('CIA', 'EST', 'INS', 'PAS', 'SIS')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE MODP IS 'Modelo de Previsão';
COMMENT ON COLUMN MODP.EQP IS 'Identificador da entidade associada ao modelo de previsão de carga';
COMMENT ON COLUMN MODP.FORMA_CAL IS 'Forma de cálculo da previsão de carga';
COMMENT ON COLUMN MODP.HORIZONTE IS 'Número de horas a frente para realizar a previsão de carga (horas)';
COMMENT ON COLUMN MODP.ID IS 'Identificador do modelo de previsão de carga';
COMMENT ON COLUMN MODP.INICIO IS 'Minuto a partir da hora cheia para a primeira previsão (min)';
COMMENT ON COLUMN MODP.INTERVALO IS 'Intervalo entre duas previsões consecutivas (min)';
COMMENT ON COLUMN MODP.NOME IS 'Descrição do modelo de previsão de carga';
COMMENT ON COLUMN MODP.TIPO_PREV IS 'Tipo de previsor utilizado';
COMMENT ON COLUMN MODP.TPEQP IS 'Tipo da entidade associada ao modelo de previsão de carga';
COMMENT ON COLUMN MODP.CMT IS 'Comentario';
COMMENT ON COLUMN MODP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE MODPV;
CREATE TABLE MODPV (
ATRASO INT  NOT NULL ,
MODP CHAR (32) NOT NULL ,
OPERADOR CHAR (1) NOT NULL CHECK (OPERADOR IN ('*', '+', '-', '/')),
OPERANDO1 REAL  NOT NULL ,
OPERANDO2 REAL  NOT NULL ,
ORDEM INT  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (MODP, ORDEM)
);
COMMENT ON TABLE MODPV IS 'Variáveis do Modelo de Previsão';
COMMENT ON COLUMN MODPV.ATRASO IS 'Número de intervalos para trás do valor variável utilizada na previsão';
COMMENT ON COLUMN MODPV.MODP IS 'Modelo de previsão de carga';
COMMENT ON COLUMN MODPV.OPERADOR IS 'Operador a ser aplicado no cálculo do valor do modelo de previsão';
COMMENT ON COLUMN MODPV.OPERANDO1 IS 'Operando1 utilizado no cálculo do valor do modelo de previsão';
COMMENT ON COLUMN MODPV.OPERANDO2 IS 'Operando2 utilizado no cálculo do valor do modelo de previsão';
COMMENT ON COLUMN MODPV.ORDEM IS 'Ordem da variável dentro do modelo de previsão';
COMMENT ON COLUMN MODPV.CMT IS 'Comentario';
COMMENT ON COLUMN MODPV.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE MRPG;
CREATE TABLE MRPG (
ID CHAR (3) NOT NULL ,
TEXTO CHAR (48) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE MRPG IS 'Motivos de reprogramação de geração';
COMMENT ON COLUMN MRPG.ID IS 'Identificador do motivo da reprogramação de geração';
COMMENT ON COLUMN MRPG.TEXTO IS 'Texto associado ao motivo da reprogramação de geração';
COMMENT ON COLUMN MRPG.CMT IS 'Comentario';
COMMENT ON COLUMN MRPG.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE MUL;
CREATE TABLE MUL (
CNF CHAR (16) NOT NULL ,
GSD CHAR (8) NOT NULL ,
GUARD INT  DEFAULT 5 ,
ID CHAR (16) NOT NULL ,
JANEL INT  DEFAULT 10 ,
LSIMP INT  DEFAULT 0 CHECK (LSIMP IN ('0', '1')),
NOME CHAR (63)  ,
ORDEM INT  NOT NULL ,
TRQML INT  DEFAULT 10 ,
TRSTN INT  DEFAULT 20 ,
VPROT INT  DEFAULT 7 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE MUL IS 'Multiligação em protocolo X25-X75';
COMMENT ON COLUMN MUL.CNF IS 'Configuração física';
COMMENT ON COLUMN MUL.GSD IS 'Gate-way SCADA';
COMMENT ON COLUMN MUL.GUARD IS 'Guarda da janela do nível multiligação (MX)';
COMMENT ON COLUMN MUL.ID IS 'Identificador da multiligação';
COMMENT ON COLUMN MUL.JANEL IS 'Janela do nível multiligação (MW)';
COMMENT ON COLUMN MUL.LSIMP IS 'Indica bypass do subnível multiligação';
COMMENT ON COLUMN MUL.NOME IS 'Nome';
COMMENT ON COLUMN MUL.ORDEM IS 'Ordem da multiligação';
COMMENT ON COLUMN MUL.TRQML IS 'Temporizador de quadro de multiligação perdido (T3)';
COMMENT ON COLUMN MUL.TRSTN IS 'Temporizador de restart do nível 3';
COMMENT ON COLUMN MUL.VPROT IS 'Versão do protocolo';
COMMENT ON COLUMN MUL.CMT IS 'Comentario';
COMMENT ON COLUMN MUL.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE NOCT;
CREATE TABLE NOCT (
CTX CHAR (15) NOT NULL ,
NOH CHAR (16) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (NOH, CTX)
);
COMMENT ON TABLE NOCT IS 'Relacionamento noh - contexto';
COMMENT ON COLUMN NOCT.CTX IS 'Identificador do contexto';
COMMENT ON COLUMN NOCT.NOH IS 'Identificador do nó';
COMMENT ON COLUMN NOCT.CMT IS 'Comentario';
COMMENT ON COLUMN NOCT.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE NODE_OPC;
CREATE TABLE NODE_OPC (
ID CHAR (32) NOT NULL ,
NODE_PAI CHAR (32) NOT NULL ,
NODE_REF_TYPE CHAR (32) NOT NULL ,
BROWSE_NAME CHAR (32)  ,
DISPLAY_NAME CHAR (32)  ,
NODE_CLASS CHAR (16) NOT NULL CHECK (NODE_CLASS IN ('DATATYPE', 'METHOD', 'OBJECT', 'OBJECTTYPE', 'REFERENCETYPE', 'VARIABLE', 'VARIABLETYPE', 'VIEW')),
NODE_TYPE_DEF CHAR (32)  ,
ENT_SAGE CHAR (12)  ,
ATR_SAGE CHAR (15)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE NODE_OPC IS 'Nodes do modelo OPC UA exportado pelo SAGE';
COMMENT ON COLUMN NODE_OPC.ID IS 'NodeId OPC UA no formato NSIndex:ID';
COMMENT ON COLUMN NODE_OPC.NODE_PAI IS 'NodeId do Pai no formato NSIndex:ID';
COMMENT ON COLUMN NODE_OPC.NODE_REF_TYPE IS 'NodeId do referenceType no formato NSIndex:ID (numérico)';
COMMENT ON COLUMN NODE_OPC.BROWSE_NAME IS 'Browse Name';
COMMENT ON COLUMN NODE_OPC.DISPLAY_NAME IS 'Display Name';
COMMENT ON COLUMN NODE_OPC.NODE_CLASS IS 'Node Class';
COMMENT ON COLUMN NODE_OPC.NODE_TYPE_DEF IS 'NodeId do TypeDefinition no formato NSIndex:ID (numérico)';
COMMENT ON COLUMN NODE_OPC.ENT_SAGE IS 'Entidade do SAGE a ser expandida';
COMMENT ON COLUMN NODE_OPC.ATR_SAGE IS 'Atributo selecionado da entidade do SAGE a ser expandida';
COMMENT ON COLUMN NODE_OPC.CMT IS 'Comentario';
COMMENT ON COLUMN NODE_OPC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE NOH;
CREATE TABLE NOH (
ENDIP CHAR (15) NOT NULL ,
ID CHAR (16) NOT NULL ,
NOME CHAR (36) NOT NULL ,
NTATV INT  DEFAULT 4 ,
TPNOH CHAR (15) DEFAULT 'SERVIDOR' CHECK (TPNOH IN ('CONSOLE', 'SERVIDOR', 'SERVIDOR_CLONE', 'SERVIDOR_EMS', 'SERVIDOR_IHM', 'SERVIDOR_SCADA', 'TRANSPORTE')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE NOH IS 'Nó da rede';
COMMENT ON COLUMN NOH.ENDIP IS 'Endereço IP do nó na rede';
COMMENT ON COLUMN NOH.ID IS 'Identificador do nó da rede';
COMMENT ON COLUMN NOH.NOME IS 'Nome do nó';
COMMENT ON COLUMN NOH.NTATV IS 'Número de tentativas de ativar o nó';
COMMENT ON COLUMN NOH.TPNOH IS 'Tipo de nó do sistema';
COMMENT ON COLUMN NOH.CMT IS 'Comentario';
COMMENT ON COLUMN NOH.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE NV1;
CREATE TABLE NV1 (
CNF CHAR (16) NOT NULL ,
CONFIG CHAR (200)  ,
ID CHAR (16) NOT NULL ,
ORDEM INT  DEFAULT 1 ,
TN1 CHAR (4) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE NV1 IS 'Nível 1 da configuração física';
COMMENT ON COLUMN NV1.CNF IS 'Identificador da configuração física';
COMMENT ON COLUMN NV1.CONFIG IS 'Configuração específica do nível 1';
COMMENT ON COLUMN NV1.ID IS 'Identificador';
COMMENT ON COLUMN NV1.ORDEM IS 'Ordem de NV1 em CNF';
COMMENT ON COLUMN NV1.TN1 IS 'Tipo da entidade física do nível 1';
COMMENT ON COLUMN NV1.CMT IS 'Comentario';
COMMENT ON COLUMN NV1.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE NV2;
CREATE TABLE NV2 (
CONFIG CHAR (40)  ,
ID CHAR (20) NOT NULL ,
NV1 CHAR (16) NOT NULL ,
ORDEM INT  DEFAULT 1 ,
TN2 CHAR (4) NOT NULL ,
TPPNT CHAR (3) NOT NULL CHECK (TPPNT IN ('CGF', 'PAF', 'PDF', 'PIF', 'PTF')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE NV2 IS 'Nível 2 da configuração física';
COMMENT ON COLUMN NV2.CONFIG IS 'Configuração específica do nível 2';
COMMENT ON COLUMN NV2.ID IS 'Identificador';
COMMENT ON COLUMN NV2.NV1 IS 'Identificador do nível 1 da configuração física';
COMMENT ON COLUMN NV2.ORDEM IS 'Ordem de NV2 em NV1';
COMMENT ON COLUMN NV2.TN2 IS 'Tipo da entidade física do nível 2';
COMMENT ON COLUMN NV2.TPPNT IS 'Tipo do ponto físico';
COMMENT ON COLUMN NV2.CMT IS 'Comentario';
COMMENT ON COLUMN NV2.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE OCR;
CREATE TABLE OCR (
AOR CHAR (20)  ,
AUTOE CHAR (3) DEFAULT 'NAO' CHECK (AUTOE IN ('NAO', 'SIM')),
AUTOR CHAR (3) DEFAULT 'NAO' CHECK (AUTOR IN ('NAO', 'SIM')),
CONSIDERA_AOI CHAR (3) DEFAULT 'NAO' CHECK (CONSIDERA_AOI IN ('NAO', 'SIM')),
DUR INT  DEFAULT 1000 ,
GRPOCR CHAR (23)  ,
ID CHAR (25) NOT NULL ,
NREP INT  DEFAULT 3 ,
OCR_COPIA CHAR (25)  ,
SEVER CHAR (5) NOT NULL ,
TELA CHAR (50)  ,
TEXTO CHAR (50) NOT NULL ,
TIPOE CHAR (5) NOT NULL CHECK (TIPOE IN ('AUTOE', 'AUTOR', 'NELES', 'NORML', 'NSUPE', 'NSUPO')),
TPSOM CHAR (5) DEFAULT 'BREVE' CHECK (TPSOM IN ('BREVE', 'CONTI', 'LONGO', 'NULO', 'USR04', 'USR05', 'USR06', 'USR07', 'USR08', 'USR09', 'USR10', 'USR11', 'USR12', 'USR13', 'USR14', 'USR15', 'USR16', 'USR17', 'USR18', 'USR19', 'USR20', 'USR21', 'USR22', 'USR23', 'USR24', 'USR25', 'USR26', 'USR27', 'USR28', 'USR29', 'USR30', 'USR31', 'USR32')),
TPUSR CHAR (4) DEFAULT 'USR' CHECK (TPUSR IN ('SIS', 'UAPL', 'USR')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE OCR IS 'Ocorrência';
COMMENT ON COLUMN OCR.AOR IS 'Área de Responsabilidade associada a OCR';
COMMENT ON COLUMN OCR.AUTOE IS 'Complementa com auto eliminação função definida em TIPOE';
COMMENT ON COLUMN OCR.AUTOR IS 'Complementa com auto reconhecimento função definida em TIPOE';
COMMENT ON COLUMN OCR.CONSIDERA_AOI IS 'Indicador para considerar a AOI na geração de alarmes';
COMMENT ON COLUMN OCR.DUR IS 'Duração do som (configurado pelo usuário em milissegundos)';
COMMENT ON COLUMN OCR.GRPOCR IS 'Identificador do Grupo de Ocorrências desta OCR';
COMMENT ON COLUMN OCR.ID IS 'Identificador ocorrência';
COMMENT ON COLUMN OCR.NREP IS 'Número de repetições do som configurado pelo usuário';
COMMENT ON COLUMN OCR.OCR_COPIA IS 'Ocorrência que é cópia desta OCR para geração de múltiplos alarmes';
COMMENT ON COLUMN OCR.SEVER IS 'Severidade';
COMMENT ON COLUMN OCR.TELA IS 'Identificador da tela associada a ocorrência';
COMMENT ON COLUMN OCR.TEXTO IS 'Texto ocorrência';
COMMENT ON COLUMN OCR.TIPOE IS 'Tipo da ocorrência';
COMMENT ON COLUMN OCR.TPSOM IS 'Sinal sonoro de alarme';
COMMENT ON COLUMN OCR.TPUSR IS 'Tipo do usuário da ocorrência';
COMMENT ON COLUMN OCR.CMT IS 'Comentario';
COMMENT ON COLUMN OCR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PAD;
CREATE TABLE PAD (
ID CHAR (48) NOT NULL ,
PAS CHAR (32) NOT NULL ,
TDD CHAR (12) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PAD IS 'Relacionamento PAS x TDD';
COMMENT ON COLUMN PAD.ID IS 'Ponto de Distribuição Analógica';
COMMENT ON COLUMN PAD.PAS IS 'Ponto de Medição Analógica';
COMMENT ON COLUMN PAD.TDD IS 'Terminal de distribuição de dados';
COMMENT ON COLUMN PAD.CMT IS 'Comentario';
COMMENT ON COLUMN PAD.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PAF;
CREATE TABLE PAF (
DESC1 CHAR (40)  ,
DESC2 CHAR (40)  ,
ID CHAR (48) NOT NULL ,
KCONV1 REAL  DEFAULT 1. ,
KCONV2 REAL  DEFAULT 0. ,
KCONV3 CHAR (4) DEFAULT 'BIP' CHECK (KCONV3 IN ('APC0', 'ASG0', 'BIP', 'CMV0', 'CMV1', 'CMV2', 'CMV3', 'CMV4', 'IEEE', 'LEN', 'MV0', 'MV1', 'MV2', 'SAV0', 'UNI', 'VAX')),
KCONV4 REAL  DEFAULT 0. ,
KCONV5 REAL  DEFAULT 0. ,
MODULO CHAR (3) DEFAULT 'NAO' CHECK (MODULO IN ('NAO', 'SIM')),
NV2 CHAR (20) NOT NULL ,
ORDEM INT  DEFAULT 1 ,
PNT CHAR (48)  ,
TPPNT CHAR (3)  CHECK (TPPNT IN ('', 'PAD', 'PAS')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PAF IS 'Ponto analógico físico';
COMMENT ON COLUMN PAF.DESC1 IS 'Informações complementares 1';
COMMENT ON COLUMN PAF.DESC2 IS 'Informações complementares 2';
COMMENT ON COLUMN PAF.ID IS 'Identificador';
COMMENT ON COLUMN PAF.KCONV1 IS 'Constante de conversão p/ unidade de engenharia';
COMMENT ON COLUMN PAF.KCONV2 IS 'Constante de conversão p/ unidade de engenharia';
COMMENT ON COLUMN PAF.KCONV3 IS 'Conversão de formato (e CDCs IEC/61850)';
COMMENT ON COLUMN PAF.KCONV4 IS 'Constante de conversão p/ unidade de engenharia';
COMMENT ON COLUMN PAF.KCONV5 IS 'Constante de conversão p/ unidade de engenharia';
COMMENT ON COLUMN PAF.MODULO IS 'Habilita a função módulo para valores negativos';
COMMENT ON COLUMN PAF.NV2 IS 'Identificador NV2';
COMMENT ON COLUMN PAF.ORDEM IS 'Ordem do ponto no nível 2 da configuração física';
COMMENT ON COLUMN PAF.PNT IS 'Ponto analógico lógico';
COMMENT ON COLUMN PAF.TPPNT IS 'Tipo do ponto analógico (distribuição ou aquisição)';
COMMENT ON COLUMN PAF.CMT IS 'Comentario';
COMMENT ON COLUMN PAF.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PAPEL;
CREATE TABLE PAPEL (
COS CHAR (20)  ,
ID CHAR (20) NOT NULL ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PAPEL IS 'Papel do Usuário';
COMMENT ON COLUMN PAPEL.COS IS 'Centro de operação associado ao papel de usuário';
COMMENT ON COLUMN PAPEL.ID IS 'Identificador';
COMMENT ON COLUMN PAPEL.NOME IS 'Nome';
COMMENT ON COLUMN PAPEL.CMT IS 'Comentario';
COMMENT ON COLUMN PAPEL.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PAS;
CREATE TABLE PAS (
ALINT CHAR (3) DEFAULT 'NAO' CHECK (ALINT IN ('NAO', 'SIM')),
ALRIN CHAR (3) DEFAULT 'NAO' CHECK (ALRIN IN ('NAO', 'SIM')),
AOR CHAR (20)  ,
ATLZINV CHAR (3) DEFAULT 'NAO' CHECK (ATLZINV IN ('NAO', 'SIM')),
BDTR CHAR (3) DEFAULT 'SIM' CHECK (BDTR IN ('NAO', 'SIM')),
BNDMO REAL  DEFAULT -1. ,
CDINIC CHAR (8) DEFAULT 'NORMAL' CHECK (CDINIC IN ('ESTIMADO', 'MANUAL', 'NAOSUP', 'NORMAL')),
COMPDEV REAL  DEFAULT -1 ,
EXCDEV REAL  DEFAULT -1 ,
HISTPER INT  DEFAULT 0 ,
HISTSLC CHAR (3) DEFAULT 'SIM' CHECK (HISTSLC IN ('NAO', 'SIM')),
HTRIS REAL  DEFAULT 0 ,
ID CHAR (32) NOT NULL ,
IDOPER CHAR (32)  ,
IDICCP CHAR (32)  ,
LIA REAL  DEFAULT -999999 ,
LIALE REAL  DEFAULT -999999 ,
LIAMA REAL  DEFAULT -999999 ,
LIAME REAL  DEFAULT -999999 ,
LIAMI REAL  DEFAULT -999999 ,
LIAPE REAL  DEFAULT -999999 ,
LIE REAL  NOT NULL ,
LIELE REAL  DEFAULT -999999 ,
LIEMA REAL  DEFAULT -999999 ,
LIEME REAL  DEFAULT -999999 ,
LIEMI REAL  DEFAULT -999999 ,
LIEPE REAL  DEFAULT -999999 ,
LIU REAL  DEFAULT -999999 ,
LIULE REAL  DEFAULT -999999 ,
LIUMA REAL  DEFAULT -999999 ,
LIUME REAL  DEFAULT -999999 ,
LIUMI REAL  DEFAULT -999999 ,
LIUPE REAL  DEFAULT -999999 ,
LSA REAL  DEFAULT 999999 ,
LSALE REAL  DEFAULT 999999 ,
LSAMA REAL  DEFAULT 999999 ,
LSAME REAL  DEFAULT 999999 ,
LSAMI REAL  DEFAULT 999999 ,
LSAPE REAL  DEFAULT 999999 ,
LSCINF CHAR (8)  ,
LSE REAL  NOT NULL ,
LSELE REAL  DEFAULT 999999 ,
LSEMA REAL  DEFAULT 999999 ,
LSEME REAL  DEFAULT 999999 ,
LSEMI REAL  DEFAULT 999999 ,
LSEPE REAL  DEFAULT 999999 ,
LSU REAL  DEFAULT 999999 ,
LSULE REAL  DEFAULT 999999 ,
LSUMA REAL  DEFAULT 999999 ,
LSUME REAL  DEFAULT 999999 ,
LSUMI REAL  DEFAULT 999999 ,
LSUPE REAL  DEFAULT 999999 ,
NCOMISS CHAR (3) DEFAULT 'NAO' CHECK (NCOMISS IN ('NAO', 'SIM')),
OBSRV CHAR (42)  ,
OCR CHAR (25)  ,
PCONDALR CHAR (32)  ,
PRIO CHAR (3) DEFAULT 'NAO' CHECK (PRIO IN ('NAO', 'SIM')),
PTC CHAR (20)  ,
SELSD CHAR (3) DEFAULT 'NAO' CHECK (SELSD IN ('NAO', 'SIM')),
SINCR_MAN CHAR (3)  CHECK (SINCR_MAN IN ('', 'NAO', 'SIM')),
STEP CHAR (3) DEFAULT 'SIM' CHECK (STEP IN ('NAO', 'SIM')),
TAC CHAR (12) NOT NULL ,
TCL CHAR (11) NOT NULL ,
TELA CHAR (50)  ,
TEND CHAR (3) DEFAULT 'NAO' CHECK (TEND IN ('NAO', 'SIM')),
TIPO CHAR (10) DEFAULT 'OUTROS' CHECK (TIPO IN ('AAMP', 'AAMP_A', 'AAMP_B', 'AAMP_C', 'AAMP_N', 'AKV', 'AKV_AN', 'AKV_BN', 'AKV_CN', 'AKV_N', 'ALRP', 'AMP', 'AMPL_OSC', 'AMP_A', 'AMP_B', 'AMP_C', 'AMP_N', 'ANG_COMU', 'ANG_DPEX', 'ANG_FASE', 'BIAS', 'DAMP_OSC', 'DCJ_MW', 'DEFA', 'DFREQ', 'DIST', 'ECA', 'FPOT', 'FREQ', 'FREQ_OSC', 'HARMONICAS', 'KV', 'KVD', 'KVFN', 'KV_AB', 'KV_AN', 'KV_BC', 'KV_BN', 'KV_CA', 'KV_CN', 'KV_N', 'MDF', 'MDT', 'MVA', 'MVAR', 'MVARH', 'MVARH_E', 'MVARH_S', 'MW', 'MWH', 'MWHH', 'MWH_E', 'MWH_S', 'NIVEL', 'OUTROS', 'PCARGA', 'PERCENT', 'PLUVI', 'PMT', 'PRESSAO', 'RPM', 'TAP', 'TEMPO', 'TMP', 'VAZAO', 'VCC')),
TMP_CURTA INT  DEFAULT 0 ,
TMP_LONGA INT  DEFAULT 0 ,
TPEQP CHAR (4)  CHECK (TPEQP IN ('', 'ACO', 'ARE', 'BAH', 'BCP', 'CAG', 'CAR', 'CIA', 'CLI', 'CNC', 'CNV', 'COS', 'CRE', 'CSE', 'CSI', 'ELE', 'EST', 'ESTM', 'GUSI', 'INS', 'LDC', 'LTR', 'RAM', 'REA', 'REG', 'REGH', 'RESV', 'RIO', 'SBA', 'SIS', 'SME', 'TAC', 'TR2', 'TR3', 'UDE', 'UFE', 'UGE', 'USI', 'UTR')),
TPFIL CHAR (4) DEFAULT 'NLFL' CHECK (TPFIL IN ('FIL1', 'FIL2', 'FIL3', 'FIL4', 'FIL5', 'FIL6', 'FIL7', 'FIL8', 'NLFL')),
TXVAR INT  DEFAULT 0 CHECK (TXVAR >= 0 AND TXVAR <= 100),
UAPL CHAR (3) DEFAULT 'NAO' CHECK (UAPL IN ('NAO', 'SIM')),
VLINIC REAL  DEFAULT 0. ,
CIA CHAR (10)  ,
DPE REAL  DEFAULT 0. ,
EE CHAR (3) DEFAULT 'SIM' CHECK (EE IN ('NAO', 'SIM')),
EQP CHAR (32)  ,
EST CHAR (15)  ,
HISTLIN CHAR (3) DEFAULT 'SIM' CHECK (HISTLIN IN ('NAO', 'SIM')),
INVSN CHAR (3) DEFAULT 'NAO' CHECK (INVSN IN ('NAO', 'SIM')),
NOME CHAR (63)  ,
ORIGEM CHAR (6) DEFAULT 'SCADA' CHECK (ORIGEM IN ('MONRES', 'PDO', 'RCALC', 'SCADA')),
PARM_CAG INT  DEFAULT 0 CHECK (PARM_CAG >= 0 AND PARM_CAG <= 255),
PMU CHAR (32)  ,
PREVCAR CHAR (3) DEFAULT 'NAO' CHECK (PREVCAR IN ('NAO', 'SIM')),
SUBTIPO1 CHAR (8)  CHECK (SUBTIPO1 IN ('', 'ANEXA', 'BRUTO', 'CAG', 'CAG_BAS', 'CAG_FPR', 'CAG_GE', 'CAG_LIO', 'CAG_LIR', 'CAG_LMG', 'CAG_LSG', 'CAG_LSO', 'CAG_LSR', 'CAG_MWA', 'CAG_TLMV', 'CAG_TLMW', 'CP', 'DIN', 'ERRO', 'FREQ', 'GD', 'GDI', 'GDS', 'GE', 'GMA', 'GMI', 'GP', 'II', 'ILP', 'ILR', 'LIMOFF', 'LIQUI', 'LOCAL', 'NIJUZ', 'NIMON', 'OUTROS', 'REMOTO', 'RGIR', 'RREG', 'TRAMPA')),
TERM CHAR (5)  CHECK (TERM IN ('', 'ACOD', 'ACOP', 'A_REA', 'D_REA', 'FIXO', 'INV', 'RET', 'VARIA')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PAS IS 'Ponto de medição analógica';
COMMENT ON COLUMN PAS.ALINT IS 'Indicador para Alarme na Inicialização e na Integridade';
COMMENT ON COLUMN PAS.ALRIN IS 'Alarme inibido';
COMMENT ON COLUMN PAS.AOR IS 'Área de responsabilidade';
COMMENT ON COLUMN PAS.ATLZINV IS 'Indicador de atualização de valor inválido';
COMMENT ON COLUMN PAS.BDTR IS 'Indicador de que o ponto analógico será incluído na base de tempo-real';
COMMENT ON COLUMN PAS.BNDMO IS 'Banda morta';
COMMENT ON COLUMN PAS.CDINIC IS 'Condição Inicial do Ponto Analógico';
COMMENT ON COLUMN PAS.COMPDEV IS 'Banda morta em UE para efeito de compressão no PI';
COMMENT ON COLUMN PAS.EXCDEV IS 'Banda morta em UE para efeito de exceção no PI';
COMMENT ON COLUMN PAS.HISTPER IS 'Período de exportação para base histórica';
COMMENT ON COLUMN PAS.HISTSLC IS 'Ponto selecionado para base histórica';
COMMENT ON COLUMN PAS.HTRIS IS 'Valor de histerese';
COMMENT ON COLUMN PAS.ID IS 'Identificador';
COMMENT ON COLUMN PAS.IDOPER IS 'Identificador especifico para o operador';
COMMENT ON COLUMN PAS.IDICCP IS 'Identificador para Servidor ICCP';
COMMENT ON COLUMN PAS.LIA IS 'Limite inferior de advertência';
COMMENT ON COLUMN PAS.LIALE IS 'Limite inferior de advertência - carga leve';
COMMENT ON COLUMN PAS.LIAMA IS 'Limite inferior de advertência - carga máxima / período noturno';
COMMENT ON COLUMN PAS.LIAME IS 'Limite inferior de advertência - carga média';
COMMENT ON COLUMN PAS.LIAMI IS 'Limite inferior de advertência - carga mínima';
COMMENT ON COLUMN PAS.LIAPE IS 'Limite inferior de advertência - carga pesada / período diurno';
COMMENT ON COLUMN PAS.LIE IS 'Limite inferior de escala';
COMMENT ON COLUMN PAS.LIELE IS 'Limite inferior de escala - carga leve';
COMMENT ON COLUMN PAS.LIEMA IS 'Limite inferior de escala - carga máxima / período noturno';
COMMENT ON COLUMN PAS.LIEME IS 'Limite inferior de escala - carga média';
COMMENT ON COLUMN PAS.LIEMI IS 'Limite inferior de escala - carga mínima';
COMMENT ON COLUMN PAS.LIEPE IS 'Limite inferior de escala - carga pesada / período diurno';
COMMENT ON COLUMN PAS.LIU IS 'Limite inferior de urgência';
COMMENT ON COLUMN PAS.LIULE IS 'Limite inferior de urgência - carga leve';
COMMENT ON COLUMN PAS.LIUMA IS 'Limite inferior de urgência - carga máxima / período noturno';
COMMENT ON COLUMN PAS.LIUME IS 'Limite inferior de urgência - carga média';
COMMENT ON COLUMN PAS.LIUMI IS 'Limite inferior de urgência - carga mínima';
COMMENT ON COLUMN PAS.LIUPE IS 'Limite inferior de urgência - carga pesada / período diurno';
COMMENT ON COLUMN PAS.LSA IS 'Limite superior de advertência';
COMMENT ON COLUMN PAS.LSALE IS 'Limite superior de advertência - carga leve';
COMMENT ON COLUMN PAS.LSAMA IS 'Limite superior de advertência - carga máxima / período noturno';
COMMENT ON COLUMN PAS.LSAME IS 'Limite superior de advertência - carga média';
COMMENT ON COLUMN PAS.LSAMI IS 'Limite superior de advertência - carga mínima';
COMMENT ON COLUMN PAS.LSAPE IS 'Limite superior de advertência - carga pesada / período diurno';
COMMENT ON COLUMN PAS.LSCINF IS 'Identificador da ligação SCADA no nível hierárquico inferior de comunicação';
COMMENT ON COLUMN PAS.LSE IS 'Limite superior de escala';
COMMENT ON COLUMN PAS.LSELE IS 'Limite superior de escala - carga leve';
COMMENT ON COLUMN PAS.LSEMA IS 'Limite superior de escala - carga máxima / período noturno';
COMMENT ON COLUMN PAS.LSEME IS 'Limite superior de escala - carga média';
COMMENT ON COLUMN PAS.LSEMI IS 'Limite superior de escala - carga mínima';
COMMENT ON COLUMN PAS.LSEPE IS 'Limite superior de escala - carga pesada / período diurno';
COMMENT ON COLUMN PAS.LSU IS 'Limite superior de urgência';
COMMENT ON COLUMN PAS.LSULE IS 'Limite superior de urgência - carga leve';
COMMENT ON COLUMN PAS.LSUMA IS 'Limite superior de urgência - carga máxima / período noturno';
COMMENT ON COLUMN PAS.LSUME IS 'Limite superior de urgência - carga média';
COMMENT ON COLUMN PAS.LSUMI IS 'Limite superior de urgência - carga mínima';
COMMENT ON COLUMN PAS.LSUPE IS 'Limite superior de urgência - carga pesada / período diurno';
COMMENT ON COLUMN PAS.NCOMISS IS 'Indicador de ponto não comissionado';
COMMENT ON COLUMN PAS.OBSRV IS 'Observações sobre o ponto analógico';
COMMENT ON COLUMN PAS.OCR IS 'Ocorrência do ponto';
COMMENT ON COLUMN PAS.PCONDALR IS 'Ponto digital condicionante da habilitação do alarme';
COMMENT ON COLUMN PAS.PRIO IS 'Ponto com processamento SCADA prioritário';
COMMENT ON COLUMN PAS.PTC IS 'Ocorrência da tabela PTC associada ao ponto de medição analógica (configuração SCADA)';
COMMENT ON COLUMN PAS.SELSD IS 'Indicador de distribuição de valor aquisitado';
COMMENT ON COLUMN PAS.SINCR_MAN IS 'Indicador de autorização para sincronismo de entradas manuais';
COMMENT ON COLUMN PAS.STEP IS 'Indicador de modo de interpolação de valores no banco PI';
COMMENT ON COLUMN PAS.TAC IS 'TAC a que pertence';
COMMENT ON COLUMN PAS.TCL IS 'Tipo do cálculo';
COMMENT ON COLUMN PAS.TELA IS 'Identificador da tela associada ao ponto analógico';
COMMENT ON COLUMN PAS.TEND IS 'Ponto selecionado para visor de tendências';
COMMENT ON COLUMN PAS.TIPO IS 'Tipo da grandeza medida';
COMMENT ON COLUMN PAS.TMP_CURTA IS 'Máximo de segundos para permanência extrapolando LxE';
COMMENT ON COLUMN PAS.TMP_LONGA IS 'Máximo de segundos para permanência extrapolando LxU';
COMMENT ON COLUMN PAS.TPEQP IS 'Tipo do equipamento onde se localiza a medida';
COMMENT ON COLUMN PAS.TPFIL IS 'Tipo do filtro';
COMMENT ON COLUMN PAS.TXVAR IS 'Percentual para alarme de taxa de variação';
COMMENT ON COLUMN PAS.UAPL IS 'Indicador de ponto selec. para aplicação do usuário';
COMMENT ON COLUMN PAS.VLINIC IS 'Valor Inicial para o Ponto Analógico';
COMMENT ON COLUMN PAS.CIA IS 'Companhia associada';
COMMENT ON COLUMN PAS.DPE IS 'Desvio padrão do erro da medida';
COMMENT ON COLUMN PAS.EE IS 'Indica se o ponto analógico será utilizado pelo estimador de estado';
COMMENT ON COLUMN PAS.EQP IS 'Equipamento associado';
COMMENT ON COLUMN PAS.EST IS 'Estação a que pertence';
COMMENT ON COLUMN PAS.HISTLIN IS 'Indicador de exportação dos limites da medida para a base histórica';
COMMENT ON COLUMN PAS.INVSN IS 'Inverte o sinal da medida analógica para o Análise de Redes';
COMMENT ON COLUMN PAS.NOME IS 'Nome do ponto';
COMMENT ON COLUMN PAS.ORIGEM IS 'Origem da criação das medidas analógicas';
COMMENT ON COLUMN PAS.PARM_CAG IS 'Parâmetro para utilização no CAG';
COMMENT ON COLUMN PAS.PMU IS 'Id do pmu ao qual este ponto pertence';
COMMENT ON COLUMN PAS.PREVCAR IS 'Indica se o ponto analógico será utilizado pelo previsor de cargas';
COMMENT ON COLUMN PAS.SUBTIPO1 IS 'Subtipo1 de classificação de medidas analógicas';
COMMENT ON COLUMN PAS.TERM IS 'Tipo do terminal do equipamento associado';
COMMENT ON COLUMN PAS.CMT IS 'Comentario';
COMMENT ON COLUMN PAS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PDC;
CREATE TABLE PDC (
ID CHAR (16) NOT NULL ,
NOME CHAR (42) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PDC IS 'Concentrador de Dados Fasoriais (Phasor Data Concentrator)';
COMMENT ON COLUMN PDC.ID IS 'Identificador';
COMMENT ON COLUMN PDC.NOME IS 'Nome';
COMMENT ON COLUMN PDC.CMT IS 'Comentario';
COMMENT ON COLUMN PDC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PDD;
CREATE TABLE PDD (
ID CHAR (48) NOT NULL ,
PDS CHAR (32) NOT NULL ,
TDD CHAR (12) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PDD IS 'Relacionamento PDS x TDD';
COMMENT ON COLUMN PDD.ID IS 'Ponto digital do serviço de distribuição';
COMMENT ON COLUMN PDD.PDS IS 'Ponto digital do serviço de aquisição';
COMMENT ON COLUMN PDD.TDD IS 'Terminal de distribuição de dados';
COMMENT ON COLUMN PDD.CMT IS 'Comentario';
COMMENT ON COLUMN PDD.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PDF;
CREATE TABLE PDF (
DESC1 CHAR (40)  ,
DESC2 CHAR (40)  ,
ID CHAR (48) NOT NULL ,
KCONV CHAR (4) DEFAULT 'NOR' CHECK (KCONV IN ('ACD0', 'ACD1', 'ACD2', 'ACD3', 'ACD4', 'ACD5', 'ACD6', 'ACD7', 'ACD8', 'ACD9', 'ACT0', 'ACT1', 'ACT2', 'ACT3', 'ACT4', 'DPC0', 'DPC1', 'DPS0', 'INV', 'NOR', 'SPC0', 'SPC1', 'SPG0', 'SPS0', 'SQI', 'SQN')),
NV2 CHAR (20) NOT NULL ,
ORDEM INT  DEFAULT 1 ,
PNT CHAR (48)  ,
TPPNT CHAR (3)  CHECK (TPPNT IN ('', 'PDD', 'PDS')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PDF IS 'Ponto digital físico';
COMMENT ON COLUMN PDF.DESC1 IS 'Informações complementares 1';
COMMENT ON COLUMN PDF.DESC2 IS 'Informações complementares 2';
COMMENT ON COLUMN PDF.ID IS 'Identificador';
COMMENT ON COLUMN PDF.KCONV IS 'Conversão de formato (e CDCs IEC/61850)';
COMMENT ON COLUMN PDF.NV2 IS 'Identificador NV2';
COMMENT ON COLUMN PDF.ORDEM IS 'Ordem do ponto no nível 2 da configuração física';
COMMENT ON COLUMN PDF.PNT IS 'Ponto digital lógico';
COMMENT ON COLUMN PDF.TPPNT IS 'Tipo do ponto digital lógico (aquisição ou distribuição)';
COMMENT ON COLUMN PDF.CMT IS 'Comentario';
COMMENT ON COLUMN PDF.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PDS;
CREATE TABLE PDS (
ALINT CHAR (3) DEFAULT 'NAO' CHECK (ALINT IN ('NAO', 'SIM')),
ALRIN CHAR (3) DEFAULT 'NAO' CHECK (ALRIN IN ('NAO', 'SIM')),
AOR CHAR (20)  ,
ATLZINV CHAR (3) DEFAULT 'NAO' CHECK (ATLZINV IN ('NAO', 'SIM')),
BDTR CHAR (3) DEFAULT 'SIM' CHECK (BDTR IN ('NAO', 'SIM')),
CDINIC CHAR (6) DEFAULT 'NORMAL' CHECK (CDINIC IN ('MANUAL', 'NAOSUP', 'NORMAL')),
EQP CHAR (32)  ,
HISTSLC CHAR (3) DEFAULT 'SIM' CHECK (HISTSLC IN ('NAO', 'SIM')),
HISTSLC_SOE CHAR (3) DEFAULT 'NAO' CHECK (HISTSLC_SOE IN ('NAO', 'SIM')),
ID CHAR (32) NOT NULL ,
IDOPER CHAR (32)  ,
IDICCP CHAR (32)  ,
INVRT CHAR (3) DEFAULT 'NAO' CHECK (INVRT IN ('NAO', 'SIM')),
LSCINF CHAR (8)  ,
NCOMISS CHAR (3) DEFAULT 'NAO' CHECK (NCOMISS IN ('NAO', 'SIM')),
NOME CHAR (63)  ,
OBSRV CHAR (42)  ,
OCR CHAR (25)  ,
PCONDALR CHAR (32)  ,
SELSD CHAR (3) DEFAULT 'NAO' CHECK (SELSD IN ('NAO', 'SIM')),
SINCR_MAN CHAR (3)  CHECK (SINCR_MAN IN ('', 'NAO', 'SIM')),
SOEIN CHAR (3) DEFAULT 'NAO' CHECK (SOEIN IN ('NAO', 'SIM')),
STINI CHAR (1) DEFAULT 'F' CHECK (STINI IN ('A', 'F')),
STNOR CHAR (1) DEFAULT 'F' CHECK (STNOR IN ('A', 'F')),
TAC CHAR (12) NOT NULL ,
TCL CHAR (11) NOT NULL ,
TELA CHAR (50)  ,
TIPO CHAR (16) DEFAULT 'OUTROS' CHECK (TIPO IN ('ALRP', 'ALTP', 'BLOQ', 'CAG', 'CAG_CIA', 'CAG_CONJ', 'CAG_INTR', 'CAG_MF', 'CAG_MI', 'CAG_MNT', 'CAG_SINC', 'CAG_STE', 'CAG_TRIP', 'CHAVE', 'DISJ', 'FLCN', 'LINF', 'LSUP', 'OUTROS', 'PTIP', 'PTNI', 'STC', 'UTR')),
TPEQP CHAR (4)  CHECK (TPEQP IN ('', 'ACO', 'ARE', 'BAH', 'BCP', 'CAG', 'CAR', 'CIA', 'CLI', 'CNC', 'CNV', 'COS', 'CRE', 'CSE', 'CSI', 'ELE', 'EST', 'ESTM', 'GUSI', 'INS', 'LDC', 'LTR', 'RAM', 'REA', 'REG', 'REGH', 'RESV', 'RIO', 'SBA', 'SIS', 'SME', 'TAC', 'TR2', 'TR3', 'UDE', 'UFE', 'UGE', 'USI', 'UTR')),
TPFIL CHAR (4) DEFAULT 'NLFL' CHECK (TPFIL IN ('FIL1', 'FIL2', 'FIL3', 'FIL4', 'FIL5', 'FIL6', 'FIL7', 'FIL8', 'FIL9', 'NLFL')),
UAPL CHAR (3) DEFAULT 'NAO' CHECK (UAPL IN ('NAO', 'SIM')),
CIA CHAR (10)  ,
EE CHAR (3) DEFAULT 'SIM' CHECK (EE IN ('NAO', 'SIM')),
PMU CHAR (32)  ,
SUBTIPO1 CHAR (8)  CHECK (SUBTIPO1 IN ('', 'CAG', 'CAG_CONJ', 'CAG_MNT', 'CAG_SINC')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PDS IS 'Ponto digital lógico';
COMMENT ON COLUMN PDS.ALINT IS 'Indicador para Alarme na Inicialização e na Integridade';
COMMENT ON COLUMN PDS.ALRIN IS 'Alarme inibido';
COMMENT ON COLUMN PDS.AOR IS 'Área de responsabilidade';
COMMENT ON COLUMN PDS.ATLZINV IS 'Indicador de atualização de valor inválido';
COMMENT ON COLUMN PDS.BDTR IS 'Indicador de que o ponto digital será incluído na base de tempo-real';
COMMENT ON COLUMN PDS.CDINIC IS 'Condição Inicial do Ponto Digital';
COMMENT ON COLUMN PDS.EQP IS 'Equipamento associado ao ponto digital';
COMMENT ON COLUMN PDS.HISTSLC IS 'Ponto digital selecionado para base histórica';
COMMENT ON COLUMN PDS.HISTSLC_SOE IS 'Ponto de SOE selecionado para base histórica';
COMMENT ON COLUMN PDS.ID IS 'Identificador';
COMMENT ON COLUMN PDS.IDOPER IS 'Identificador especifico para o operador';
COMMENT ON COLUMN PDS.IDICCP IS 'Identificador para Servidor ICCP';
COMMENT ON COLUMN PDS.INVRT IS 'Indicador de inversão de estado';
COMMENT ON COLUMN PDS.LSCINF IS 'Identificador da ligação SCADA no nível hierárquico inferior de comunicação';
COMMENT ON COLUMN PDS.NCOMISS IS 'Indicador de ponto não comissionado';
COMMENT ON COLUMN PDS.NOME IS 'Nome do ponto';
COMMENT ON COLUMN PDS.OBSRV IS 'Observações sobre o ponto digital';
COMMENT ON COLUMN PDS.OCR IS 'Identificador de Ocorrência';
COMMENT ON COLUMN PDS.PCONDALR IS 'Ponto digital condicionante da habilitação do alarme';
COMMENT ON COLUMN PDS.SELSD IS 'Indicador de distribuição de valor aquisitado';
COMMENT ON COLUMN PDS.SINCR_MAN IS 'Indicador de autorização para sincronismo de entradas manuais';
COMMENT ON COLUMN PDS.SOEIN IS 'SOE inibido';
COMMENT ON COLUMN PDS.STINI IS 'Estado de Inicialização do Ponto Digital';
COMMENT ON COLUMN PDS.STNOR IS 'Estado de Referência do Ponto Digital - IHM';
COMMENT ON COLUMN PDS.TAC IS 'TAC a que pertence o ponto';
COMMENT ON COLUMN PDS.TCL IS 'Tipo do cálculo';
COMMENT ON COLUMN PDS.TELA IS 'Identificador da tela associada ao ponto digital';
COMMENT ON COLUMN PDS.TIPO IS 'Tipo de grandeza';
COMMENT ON COLUMN PDS.TPEQP IS 'Tipo do equipamento associado ao ponto digital';
COMMENT ON COLUMN PDS.TPFIL IS 'Tipo do filtro';
COMMENT ON COLUMN PDS.UAPL IS 'Indicador de ponto selec. para aplicação do usuário';
COMMENT ON COLUMN PDS.CIA IS 'Companhia associada';
COMMENT ON COLUMN PDS.EE IS 'Indica se o ponto digital será utilizado pelo Configurador / Estimador de Estado';
COMMENT ON COLUMN PDS.PMU IS 'Id do pmu ao qual este ponto pertence';
COMMENT ON COLUMN PDS.SUBTIPO1 IS 'Subtipo1 de classificação de medidas digitais';
COMMENT ON COLUMN PDS.CMT IS 'Comentario';
COMMENT ON COLUMN PDS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PFC;
CREATE TABLE PFC (
DTIP CHAR (15)  CHECK (DTIP IN ('', 'DIA_UTIL', 'DOMINGO', 'DOMINGO_FERIADO', 'FIM_SEMANA', 'QUARTA', 'QUINTA', 'SABADO', 'SEGUNDA', 'SEXTA', 'TERCA')),
EST CHAR (15) NOT NULL ,
FQP REAL  DEFAULT 0.484 CHECK (FQP >= -1.5 AND FQP <= 1.5),
PATAMAR CHAR (3)  CHECK (PATAMAR IN ('', 'LEV', 'MED', 'PES')),
PC REAL  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (EST, DTIP, PATAMAR)
);
COMMENT ON TABLE PFC IS 'Perfil de carga não conforme';
COMMENT ON COLUMN PFC.DTIP IS 'Dia típico associado ao perfil de carga';
COMMENT ON COLUMN PFC.EST IS 'Identificador da estação associada ao perfil de carga';
COMMENT ON COLUMN PFC.FQP IS 'Relação entre a potência reativa e a potência ativa da carga (MVAR/MW)';
COMMENT ON COLUMN PFC.PATAMAR IS 'Patamar de Carga associado ao perfil de carga';
COMMENT ON COLUMN PFC.PC IS 'Potência ativa da carga (MW)';
COMMENT ON COLUMN PFC.CMT IS 'Comentario';
COMMENT ON COLUMN PFC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PIF;
CREATE TABLE PIF (
ID CHAR (48) NOT NULL ,
DESC1 CHAR (40)  ,
DESC2 CHAR (40)  ,
NV2 CHAR (20) NOT NULL ,
PNT CHAR (32)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PIF IS 'Ponto string de informação físico';
COMMENT ON COLUMN PIF.ID IS 'Identificador do ponto de informação';
COMMENT ON COLUMN PIF.DESC1 IS 'Informações complementares 1';
COMMENT ON COLUMN PIF.DESC2 IS 'Informações complementares 2';
COMMENT ON COLUMN PIF.NV2 IS 'Identificador NV2';
COMMENT ON COLUMN PIF.PNT IS 'Ponto lógico associado';
COMMENT ON COLUMN PIF.CMT IS 'Comentario';
COMMENT ON COLUMN PIF.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PIS;
CREATE TABLE PIS (
AOR CHAR (20)  ,
ALINT CHAR (3) DEFAULT 'NAO' CHECK (ALINT IN ('NAO', 'SIM')),
ALRIN CHAR (3) DEFAULT 'NAO' CHECK (ALRIN IN ('NAO', 'SIM')),
CDINIC CHAR (6) DEFAULT 'NORMAL' CHECK (CDINIC IN ('MANUAL', 'NAOSUP', 'NORMAL')),
ID CHAR (32) NOT NULL ,
NOME CHAR (64)  ,
OCR CHAR (25)  ,
TAC CHAR (12) NOT NULL ,
TIPO CHAR (12) DEFAULT 'VISIVEL' CHECK (TIPO IN ('BINARIO', 'LOCALIZADO', 'VISIVEL')),
VLINIC CHAR (1024)  ,
ATLZINV CHAR (3) DEFAULT 'NAO' CHECK (ATLZINV IN ('NAO', 'SIM')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PIS IS 'Ponto string de informação lógico';
COMMENT ON COLUMN PIS.AOR IS 'Área de responsabilidade';
COMMENT ON COLUMN PIS.ALINT IS 'Indicador para Alarme na Inicialização e na Integridade';
COMMENT ON COLUMN PIS.ALRIN IS 'Alarme inibido';
COMMENT ON COLUMN PIS.CDINIC IS 'Condição Inicial do ponto de informação';
COMMENT ON COLUMN PIS.ID IS 'Identificador do ponto de informação';
COMMENT ON COLUMN PIS.NOME IS 'Nome do ponto de informação';
COMMENT ON COLUMN PIS.OCR IS 'Ocorrência de alteração do ponto de informação';
COMMENT ON COLUMN PIS.TAC IS 'TAC a que pertence';
COMMENT ON COLUMN PIS.TIPO IS 'Tipo do string do ponto de informação';
COMMENT ON COLUMN PIS.VLINIC IS 'Conteúdo inicial do ponto de informação';
COMMENT ON COLUMN PIS.ATLZINV IS 'Indicador de atualização mesmo inválido';
COMMENT ON COLUMN PIS.CMT IS 'Comentario';
COMMENT ON COLUMN PIS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PMU;
CREATE TABLE PMU (
ARQ_TRADE CHAR (120)  ,
ID CHAR (32) NOT NULL ,
INS CHAR (12)  ,
NOME CHAR (42)  ,
PDC CHAR (16)  ,
SEQFASE CHAR (3) DEFAULT 'ABC' CHECK (SEQFASE IN ('ABC', 'ACB', 'BAC', 'BCA', 'CAB', 'CBA')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PMU IS 'Unidade de medição Fasorial (Phasor Measurement Unit)';
COMMENT ON COLUMN PMU.ARQ_TRADE IS 'Nome do arquivo de oscilografia (com path) associado ao PMU';
COMMENT ON COLUMN PMU.ID IS 'Identificador';
COMMENT ON COLUMN PMU.INS IS 'Instalação do PMU';
COMMENT ON COLUMN PMU.NOME IS 'Nome';
COMMENT ON COLUMN PMU.PDC IS 'Concentrador de Dados Fasoriais associado ao PMU';
COMMENT ON COLUMN PMU.SEQFASE IS 'Sequencia de fases associada aos fasores da PMU';
COMMENT ON COLUMN PMU.CMT IS 'Comentario';
COMMENT ON COLUMN PMU.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PRCT;
CREATE TABLE PRCT (
AOR CHAR (20)  ,
ATVAT CHAR (3)  CHECK (ATVAT IN ('', 'AUT', 'MAN', 'NAO')),
CTX CHAR (15) NOT NULL ,
PRO CHAR (25) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (PRO, CTX)
);
COMMENT ON TABLE PRCT IS 'Relacionamento processo - contexto';
COMMENT ON COLUMN PRCT.AOR IS 'Identificador da AOR associada ao processo-contexto';
COMMENT ON COLUMN PRCT.ATVAT IS 'Indicador de ativação do processo nesse contexto';
COMMENT ON COLUMN PRCT.CTX IS 'Identificador do contexto';
COMMENT ON COLUMN PRCT.PRO IS 'Identificador do processo';
COMMENT ON COLUMN PRCT.CMT IS 'Comentario';
COMMENT ON COLUMN PRCT.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PRFAS;
CREATE TABLE PRFAS (
FASOR1 CHAR (38)  ,
FASOR2 CHAR (38)  ,
ID CHAR (32) NOT NULL ,
NOME CHAR (42) NOT NULL ,
PAS_DEVPRV CHAR (32)  ,
PAS_DIFANG CHAR (32) NOT NULL ,
PAS_DIFFREQ CHAR (32) NOT NULL ,
PAS_DIFMAG CHAR (32) NOT NULL ,
SELLOOP CHAR (3) DEFAULT 'NAO' CHECK (SELLOOP IN ('NAO', 'SIM')),
SELSTRESS CHAR (3) DEFAULT 'NAO' CHECK (SELSTRESS IN ('NAO', 'SIM')),
SELSYNC CHAR (3) DEFAULT 'NAO' CHECK (SELSYNC IN ('NAO', 'SIM')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PRFAS IS 'Pares de Medidas Fasoriais para Cálculo de diferenças de Módulo e Ângulo';
COMMENT ON COLUMN PRFAS.FASOR1 IS 'Id do primeiro fasor a ser considerado no par';
COMMENT ON COLUMN PRFAS.FASOR2 IS 'Id do segundo fasor a ser considerado no par';
COMMENT ON COLUMN PRFAS.ID IS 'Identificador';
COMMENT ON COLUMN PRFAS.NOME IS 'Nome';
COMMENT ON COLUMN PRFAS.PAS_DEVPRV IS 'Id do PAS com o desvio da diferença de ângulo em relação ao previsto';
COMMENT ON COLUMN PRFAS.PAS_DIFANG IS 'Id do PAS com diferença de ângulo dos fasores';
COMMENT ON COLUMN PRFAS.PAS_DIFFREQ IS 'Id do PAS com a diferença de frequência dos fasores';
COMMENT ON COLUMN PRFAS.PAS_DIFMAG IS 'Id do PAS com a diferença de magnitude dos fasores';
COMMENT ON COLUMN PRFAS.SELLOOP IS 'Indicador de Par de Fasores selecionado para monitoração de Fechamento de Elos (LoopAssist)';
COMMENT ON COLUMN PRFAS.SELSTRESS IS 'Indicador de Par de Fasores selecionado para monitoração de Stress de Transmissão (StressMon)';
COMMENT ON COLUMN PRFAS.SELSYNC IS 'Indicador de Par de Fasores selecionado para monitoração de Sincronismo (SyncMon)';
COMMENT ON COLUMN PRFAS.CMT IS 'Comentario';
COMMENT ON COLUMN PRFAS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PRO;
CREATE TABLE PRO (
ATIVA CHAR (3) DEFAULT 'CAD' CHECK (ATIVA IN ('CAD', 'ESP', 'PRP', 'PRS')),
ATVAT CHAR (3) DEFAULT 'AUT' CHECK (ATVAT IN ('AUT', 'MAN')),
ESSEN CHAR (3) DEFAULT 'ESC' CHECK (ESSEN IN ('ESC', 'NES')),
HORAA INT  DEFAULT 0 ,
ID CHAR (25) NOT NULL ,
MONIT CHAR (3) DEFAULT 'MON' CHECK (MONIT IN ('MON', 'NMO')),
NOME CHAR (45) NOT NULL ,
NUATV INT  DEFAULT 4 ,
PERIO INT  DEFAULT 0 ,
PRE_REQUISITO CHAR (20)  ,
SCRAT CHAR (36) NOT NULL ,
SCRDE CHAR (36) NOT NULL ,
SCRDS CHAR (36)  ,
SCRPARAM CHAR (26)  ,
SCRRE CHAR (36)  ,
TINIC INT  DEFAULT 0 ,
TIPPAR CHAR (16) DEFAULT 'NUNCA_RODA' CHECK (TIPPAR IN ('NUNCA_RODA', 'SEMPRE_RODA', 'SO_RODA_PARALELO', 'TRANSICIONA')),
TIPPR CHAR (4) DEFAULT 'INSS' CHECK (TIPPR IN ('HORC', 'HORM', 'INSP', 'INSS', 'MINC')),
WATCHDOG INT  DEFAULT 0 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PRO IS 'Classe de processo';
COMMENT ON COLUMN PRO.ATIVA IS 'Tipo de ativação';
COMMENT ON COLUMN PRO.ATVAT IS 'Indicador de ativação automática';
COMMENT ON COLUMN PRO.ESSEN IS 'Indicador de processo essencial';
COMMENT ON COLUMN PRO.HORAA IS 'Hora marcada';
COMMENT ON COLUMN PRO.ID IS 'Identificador do processo';
COMMENT ON COLUMN PRO.MONIT IS 'Tipo de monitoração';
COMMENT ON COLUMN PRO.NOME IS 'Nome do processo';
COMMENT ON COLUMN PRO.NUATV IS 'Número de ativações para falha';
COMMENT ON COLUMN PRO.PERIO IS 'Período de ativação p/ processamento periódico';
COMMENT ON COLUMN PRO.PRE_REQUISITO IS 'Identificador do pré-requisito do processo';
COMMENT ON COLUMN PRO.SCRAT IS 'Script de ativação';
COMMENT ON COLUMN PRO.SCRDE IS 'Script de desativação';
COMMENT ON COLUMN PRO.SCRDS IS 'Script de desativação do nó secundário';
COMMENT ON COLUMN PRO.SCRPARAM IS 'Parâmetro a ser passado para os Scripts de ativação e desativação';
COMMENT ON COLUMN PRO.SCRRE IS 'Script de reativação';
COMMENT ON COLUMN PRO.TINIC IS 'Tempo em segundos';
COMMENT ON COLUMN PRO.TIPPAR IS 'Tipo de ativação paralela';
COMMENT ON COLUMN PRO.TIPPR IS 'Tipo da primeira ativação';
COMMENT ON COLUMN PRO.WATCHDOG IS 'Período (em segundos) para atualização do watch-dog do processo';
COMMENT ON COLUMN PRO.CMT IS 'Comentario';
COMMENT ON COLUMN PRO.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PSV;
CREATE TABLE PSV (
GRUPO CHAR (20) NOT NULL CHECK (GRUPO IN ('ALARME', 'ALR_INIB', 'ANALISE_REDES', 'ANOTACAO', 'ATL_E_ADV', 'ATL_E_ESC', 'ATL_E_URG', 'ATL_PTC', 'ATL_TEMPO', 'ATL_V_ADV', 'ATL_V_ESC', 'ATL_V_URG', 'CAG', 'ENTR_MANUAL', 'GRUPO_PONTOS', 'INV_PAS', 'INV_PDS', 'ITS', 'LIM_ADV', 'LIM_ADV_O', 'LIM_ESC', 'LIM_ESC_O', 'LIM_URG', 'LIM_URG_O', 'MONRES', 'ORGANON', 'REGCOND', 'SOA', 'TENDENCIA')),
PRESERV CHAR (3) NOT NULL CHECK (PRESERV IN ('NAO', 'SIM')),
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (GRUPO)
);
COMMENT ON TABLE PSV IS 'Seleciona dados para preservação';
COMMENT ON COLUMN PSV.GRUPO IS 'Identificador do grupo de preservação';
COMMENT ON COLUMN PSV.PRESERV IS 'Indicador de preservação';
COMMENT ON COLUMN PSV.NOME IS 'Nome';
COMMENT ON COLUMN PSV.CMT IS 'Comentario';
COMMENT ON COLUMN PSV.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PTC;
CREATE TABLE PTC (
AOR CHAR (20)  ,
ID CHAR (20) NOT NULL ,
PAS CHAR (32)  ,
SITE CHAR (10)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PTC IS 'Patamar de carga para atualização automática de limites';
COMMENT ON COLUMN PTC.AOR IS 'Área de responsabilidade vinculada ao PTC';
COMMENT ON COLUMN PTC.ID IS 'Identificador';
COMMENT ON COLUMN PTC.PAS IS 'Ponto de medição analógica que define o nível de carga do PTC';
COMMENT ON COLUMN PTC.SITE IS 'Site a que pertence em operação normal';
COMMENT ON COLUMN PTC.CMT IS 'Comentario';
COMMENT ON COLUMN PTC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PTD;
CREATE TABLE PTD (
ID CHAR (48) NOT NULL ,
PTS CHAR (32) NOT NULL ,
TDD CHAR (12) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PTD IS 'Relacionamento PTS x TDD';
COMMENT ON COLUMN PTD.ID IS 'Ponto de Distribuição Totalizado';
COMMENT ON COLUMN PTD.PTS IS 'Ponto de Medição Totalizado';
COMMENT ON COLUMN PTD.TDD IS 'Terminal de distribuição de dados';
COMMENT ON COLUMN PTD.CMT IS 'Comentario';
COMMENT ON COLUMN PTD.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PTF;
CREATE TABLE PTF (
DESC1 CHAR (40)  ,
DESC2 CHAR (40)  ,
ID CHAR (48) NOT NULL ,
KCONV1 INT  DEFAULT 1 ,
KCONV2 INT  DEFAULT 0 ,
KCONV3 CHAR (4) DEFAULT 'NULO' CHECK (KCONV3 IN ('BCR0', 'BCR1', 'BSC0', 'BSC1', 'INC0', 'INC1', 'ING0', 'INS0', 'ISC0', 'ISC1', 'NULO', 'SEC0')),
NV2 CHAR (20) NOT NULL ,
ORDEM INT  DEFAULT 1 ,
PNT CHAR (48)  ,
TPPNT CHAR (3)  CHECK (TPPNT IN ('', 'PTD', 'PTS')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PTF IS 'Ponto totalizado físico';
COMMENT ON COLUMN PTF.DESC1 IS 'Informações complementares 1';
COMMENT ON COLUMN PTF.DESC2 IS 'Informações complementares 2';
COMMENT ON COLUMN PTF.ID IS 'Identificador';
COMMENT ON COLUMN PTF.KCONV1 IS 'Constante de conversão p/ unidade de engenharia';
COMMENT ON COLUMN PTF.KCONV2 IS 'Constante de conversão p/ unidade de engenharia';
COMMENT ON COLUMN PTF.KCONV3 IS 'Conversão de formato (e CDCs IEC/61850)';
COMMENT ON COLUMN PTF.NV2 IS 'Identificador NV2';
COMMENT ON COLUMN PTF.ORDEM IS 'Ordem do ponto no nível 2 da configuração física';
COMMENT ON COLUMN PTF.PNT IS 'Ponto totalizado lógico';
COMMENT ON COLUMN PTF.TPPNT IS 'Tipo do ponto totalizado lógico (aquisição ou distribuição)';
COMMENT ON COLUMN PTF.CMT IS 'Comentario';
COMMENT ON COLUMN PTF.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE PTS;
CREATE TABLE PTS (
ALINT CHAR (3) DEFAULT 'NAO' CHECK (ALINT IN ('NAO', 'SIM')),
ALRIN CHAR (3) DEFAULT 'NAO' CHECK (ALRIN IN ('NAO', 'SIM')),
AOR CHAR (20)  ,
ATLZINV CHAR (3) DEFAULT 'NAO' CHECK (ATLZINV IN ('NAO', 'SIM')),
CDINIC CHAR (6) DEFAULT 'NORMAL' CHECK (CDINIC IN ('MANUAL', 'NAOSUP', 'NORMAL')),
HISTPER INT  DEFAULT 0 ,
HISTSLC CHAR (3) DEFAULT 'SIM' CHECK (HISTSLC IN ('NAO', 'SIM')),
ID CHAR (32) NOT NULL ,
IDOPER CHAR (32)  ,
IDICCP CHAR (32)  ,
LSA INT  DEFAULT 999999 ,
LSCINF CHAR (8)  ,
LSE INT  NOT NULL ,
LSU INT  DEFAULT 999999 ,
NCOMISS CHAR (3) DEFAULT 'NAO' CHECK (NCOMISS IN ('NAO', 'SIM')),
OBSRV CHAR (42)  ,
OCR CHAR (25)  ,
SELSD CHAR (3) DEFAULT 'NAO' CHECK (SELSD IN ('NAO', 'SIM')),
SINCR_MAN CHAR (3)  CHECK (SINCR_MAN IN ('', 'NAO', 'SIM')),
TAC CHAR (12) NOT NULL ,
TCL CHAR (11) NOT NULL ,
TELA CHAR (50)  ,
TIPO CHAR (10) DEFAULT 'OUTROS' CHECK (TIPO IN ('ALRP', 'DISCR', 'MREG', 'MVARH', 'MVARH_E', 'MVARH_S', 'MWH', 'MWH_E', 'MWH_S', 'NIVEL', 'OUTROS', 'PLUVI')),
TPEQP CHAR (4)  CHECK (TPEQP IN ('', 'ACO', 'ARE', 'BAH', 'BCP', 'CAG', 'CAR', 'CIA', 'CLI', 'CNC', 'CNV', 'COS', 'CRE', 'CSE', 'CSI', 'ELE', 'EST', 'ESTM', 'GUSI', 'INS', 'LDC', 'LTR', 'RAM', 'REA', 'REG', 'REGH', 'RESV', 'RIO', 'SBA', 'SIS', 'SME', 'TAC', 'TR2', 'TR3', 'UDE', 'UFE', 'UGE', 'USI', 'UTR')),
TPFIL CHAR (4) DEFAULT 'NLFL' CHECK (TPFIL IN ('FIL1', 'FIL2', 'FIL3', 'FIL4', 'FIL5', 'FIL6', 'FIL7', 'FIL8', 'NLFL')),
UAPL CHAR (3) DEFAULT 'NAO' CHECK (UAPL IN ('NAO', 'SIM')),
VLINIC INT  DEFAULT 0 ,
BDTR CHAR (3) DEFAULT 'SIM' CHECK (BDTR IN ('NAO', 'SIM')),
CIA CHAR (10)  ,
DESC1 CHAR (40)  ,
DESC2 CHAR (40)  ,
EQP CHAR (32)  ,
HISTLIN CHAR (3) DEFAULT 'SIM' CHECK (HISTLIN IN ('NAO', 'SIM')),
NOME CHAR (63)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE PTS IS 'Ponto totalizado lógico';
COMMENT ON COLUMN PTS.ALINT IS 'Indicador para Alarme na Inicialização e na Integridade';
COMMENT ON COLUMN PTS.ALRIN IS 'Alarme inibido';
COMMENT ON COLUMN PTS.AOR IS 'Área de responsabilidade';
COMMENT ON COLUMN PTS.ATLZINV IS 'Indicador de atualização de valor inválido';
COMMENT ON COLUMN PTS.CDINIC IS 'Condição Inicial do Ponto Totalizado';
COMMENT ON COLUMN PTS.HISTPER IS 'Período de exportação para base histórica';
COMMENT ON COLUMN PTS.HISTSLC IS 'Ponto selecionado para base histórica';
COMMENT ON COLUMN PTS.ID IS 'Identificador';
COMMENT ON COLUMN PTS.IDOPER IS 'Identificador especifico para o operador';
COMMENT ON COLUMN PTS.IDICCP IS 'Identificador para Servidor ICCP';
COMMENT ON COLUMN PTS.LSA IS 'Limite superior de advertência';
COMMENT ON COLUMN PTS.LSCINF IS 'Identificador da ligação SCADA no nível hierárquico inferior de comunicação';
COMMENT ON COLUMN PTS.LSE IS 'Limite superior de escala';
COMMENT ON COLUMN PTS.LSU IS 'Limite superior de urgência';
COMMENT ON COLUMN PTS.NCOMISS IS 'Indicador de ponto não comissionado';
COMMENT ON COLUMN PTS.OBSRV IS 'Observações sobre o ponto totalizado';
COMMENT ON COLUMN PTS.OCR IS 'Ocorrência do ponto';
COMMENT ON COLUMN PTS.SELSD IS 'Indicador de distribuição de valor aquisitado';
COMMENT ON COLUMN PTS.SINCR_MAN IS 'Indicador de autorização para sincronismo de entradas manuais';
COMMENT ON COLUMN PTS.TAC IS 'TAC a que pertence';
COMMENT ON COLUMN PTS.TCL IS 'Tipo do cálculo';
COMMENT ON COLUMN PTS.TELA IS 'Identificador da tela associada ao ponto totalizado';
COMMENT ON COLUMN PTS.TIPO IS 'Tipo da grandeza medida';
COMMENT ON COLUMN PTS.TPEQP IS 'Tipo do equipamento onde se localiza a medida';
COMMENT ON COLUMN PTS.TPFIL IS 'Tipo do filtro';
COMMENT ON COLUMN PTS.UAPL IS 'Indicador de ponto selec. para aplicação do usuário';
COMMENT ON COLUMN PTS.VLINIC IS 'Valor Inicial para o Ponto Totalizado';
COMMENT ON COLUMN PTS.BDTR IS 'Indica se a medida lógica está operacional';
COMMENT ON COLUMN PTS.CIA IS 'Companhia a que pertence';
COMMENT ON COLUMN PTS.DESC1 IS 'Informações complementares 1';
COMMENT ON COLUMN PTS.DESC2 IS 'Informações complementares 2';
COMMENT ON COLUMN PTS.EQP IS 'Equipamento associado';
COMMENT ON COLUMN PTS.HISTLIN IS 'Indicador de exportação dos limites da medida para a base histórica';
COMMENT ON COLUMN PTS.NOME IS 'Nome do ponto';
COMMENT ON COLUMN PTS.CMT IS 'Comentario';
COMMENT ON COLUMN PTS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE QLD;
CREATE TABLE QLD (
COR CHAR (25) NOT NULL ,
ID CHAR (25) NOT NULL ,
IND CHAR (3) NOT NULL ,
PRI INT  DEFAULT -1 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE QLD IS 'Indicador de Qualidade';
COMMENT ON COLUMN QLD.COR IS 'Cor do indicador de qualidade';
COMMENT ON COLUMN QLD.ID IS 'Identificador do indicador de qualidade';
COMMENT ON COLUMN QLD.IND IS 'Símbolo do indicador de qualidade';
COMMENT ON COLUMN QLD.PRI IS 'Prioridade';
COMMENT ON COLUMN QLD.CMT IS 'Comentario';
COMMENT ON COLUMN QLD.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE RAM;
CREATE TABLE RAM (
AOR CHAR (20)  ,
CIA CHAR (10)  ,
COMPR REAL  DEFAULT 0 ,
EQP CHAR (25) NOT NULL ,
EST CHAR (15) NOT NULL ,
GRLIM CHAR (3) DEFAULT 'MVA' CHECK (GRLIM IN ('AMP', 'MVA')),
ID CHAR (25) NOT NULL ,
LOCD REAL  DEFAULT 50. CHECK (LOCD >= 0.01 AND LOCD <= 99.99),
LREFP REAL  DEFAULT 999999 ,
LSADI REAL  DEFAULT 999999 ,
LSANO REAL  DEFAULT 999999 ,
LSFI REAL  DEFAULT 99999 CHECK (LSFI >= 0 AND LSFI <= 100000),
LSOP REAL  DEFAULT 99999 CHECK (LSOP >= 0 AND LSOP <= 100000),
LSUDI REAL  DEFAULT 999999 ,
LSUNO REAL  DEFAULT 999999 ,
NOME CHAR (46)  ,
NOMEBAR CHAR (12)  ,
NUMBAR INT  DEFAULT 0 ,
R REAL  DEFAULT 0. CHECK (R >= 0. AND R <= 250.),
RISCORL CHAR (5) DEFAULT 'BAIXO' CHECK (RISCORL IN ('ALTO', 'BAIXO', 'MEDIO')),
S REAL  DEFAULT 0 CHECK (S >= 0. AND S <= 500.),
SBASE REAL  DEFAULT 100. ,
TPEQP CHAR (3) NOT NULL CHECK (TPEQP IN ('LTR', 'RAM')),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
UFE CHAR (6)  ,
VBASE REAL  DEFAULT 0. ,
X REAL  DEFAULT 0.01 CHECK (X >= 0.01 AND X <= 250.),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE RAM IS 'Ramal';
COMMENT ON COLUMN RAM.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN RAM.CIA IS 'Companhia associada';
COMMENT ON COLUMN RAM.COMPR IS 'Comprimento do Ramal';
COMMENT ON COLUMN RAM.EQP IS 'Equipamento ao qual está conectado';
COMMENT ON COLUMN RAM.EST IS 'Estação terminal';
COMMENT ON COLUMN RAM.GRLIM IS 'Grandeza associada aos limites do ramal';
COMMENT ON COLUMN RAM.ID IS 'Identificador';
COMMENT ON COLUMN RAM.LOCD IS 'Localização do ramal em relação a estação DE do equipamento origem';
COMMENT ON COLUMN RAM.LREFP IS 'Limite de referência para verificação de plausibilidade das medidas de fluxo associadas ao equipamento (MVA)';
COMMENT ON COLUMN RAM.LSADI IS 'Limite superior de advertência no período diurno';
COMMENT ON COLUMN RAM.LSANO IS 'Limite superior de advertência no período noturno';
COMMENT ON COLUMN RAM.LSFI IS 'Limite físico superior de potência aparente';
COMMENT ON COLUMN RAM.LSOP IS 'Limite operativo superior de potência aparente';
COMMENT ON COLUMN RAM.LSUDI IS 'Limite superior de urgência no período diurno';
COMMENT ON COLUMN RAM.LSUNO IS 'Limite superior de urgência no período noturno';
COMMENT ON COLUMN RAM.NOME IS 'Nome';
COMMENT ON COLUMN RAM.NOMEBAR IS 'Nome do nó elétrico fictício associado ao ramal';
COMMENT ON COLUMN RAM.NUMBAR IS 'Número externo do nó elétrico fictício associado ao ramal';
COMMENT ON COLUMN RAM.R IS 'Resistência';
COMMENT ON COLUMN RAM.RISCORL IS 'Risco de religamento do equipamento';
COMMENT ON COLUMN RAM.S IS 'Susceptância shunt';
COMMENT ON COLUMN RAM.SBASE IS 'Potência base utilizada no cálculo dos parâmetros do ramal';
COMMENT ON COLUMN RAM.TPEQP IS 'Tipo de equipamento ao qual está conectado';
COMMENT ON COLUMN RAM.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN RAM.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN RAM.UFE IS 'Unidade federativa associada ao Ramal de linha';
COMMENT ON COLUMN RAM.VBASE IS 'Tensão base utilizada no cálculo dos parâmetros do ramal';
COMMENT ON COLUMN RAM.X IS 'Reatância';
COMMENT ON COLUMN RAM.CMT IS 'Comentario';
COMMENT ON COLUMN RAM.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE RCA;
CREATE TABLE RCA (
FMULT REAL  DEFAULT 1 ,
ORDEM CHAR (3) NOT NULL ,
PARC CHAR (32) NOT NULL ,
PNT CHAR (32) NOT NULL ,
TIPOP CHAR (3) NOT NULL CHECK (TIPOP IN ('EDC', 'EDN', 'IAA', 'IEA', 'IED', 'INA', 'IND', 'IUA', 'SAA', 'SAT', 'SEA', 'SET', 'SUA', 'SUT', 'VAA', 'VAC', 'VTC')),
TPPARC CHAR (3) DEFAULT 'PAS' CHECK (TPPARC IN ('PAS', 'PDS', 'PTS')),
TPPNT CHAR (3) NOT NULL CHECK (TPPNT IN ('PAS', 'PDS', 'PTS')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (PNT, TPPNT, ORDEM)
);
COMMENT ON TABLE RCA IS 'Relação de cálculos do SCD';
COMMENT ON COLUMN RCA.FMULT IS 'Fator multiplicador da parcela';
COMMENT ON COLUMN RCA.ORDEM IS 'Ordem da parcela no cálculo';
COMMENT ON COLUMN RCA.PARC IS 'Identificador da parcela do cálculo';
COMMENT ON COLUMN RCA.PNT IS 'Identificador do ponto calculado';
COMMENT ON COLUMN RCA.TIPOP IS 'Tipo da parcela';
COMMENT ON COLUMN RCA.TPPARC IS 'Tipo de ponto da parcela';
COMMENT ON COLUMN RCA.TPPNT IS 'Tipo do ponto calculado';
COMMENT ON COLUMN RCA.CMT IS 'Comentario';
COMMENT ON COLUMN RCA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE REA;
CREATE TABLE REA (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
ECON CHAR (15)  ,
EST CHAR (15) NOT NULL ,
ID CHAR (21) NOT NULL ,
NOME CHAR (46)  ,
NOPO CHAR (6)  ,
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPOP CHAR (3) DEFAULT 'NAO' CHECK (TPOP IN ('NAO', 'SIM')),
TPREDE CHAR (20)  ,
VAL REAL  NOT NULL CHECK (VAL >= 0. AND VAL <= 600.),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE REA IS 'Reator';
COMMENT ON COLUMN REA.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN REA.ARE IS 'Identificador da área elétrica associada ao reator';
COMMENT ON COLUMN REA.CIA IS 'Companhia associada';
COMMENT ON COLUMN REA.ECON IS 'Estação controlada';
COMMENT ON COLUMN REA.EST IS 'Estação a que pertence';
COMMENT ON COLUMN REA.ID IS 'Identificador';
COMMENT ON COLUMN REA.NOME IS 'Nome';
COMMENT ON COLUMN REA.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN REA.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN REA.TPOP IS 'Indica se o reator é manobrável';
COMMENT ON COLUMN REA.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN REA.VAL IS 'Valor';
COMMENT ON COLUMN REA.CMT IS 'Comentario';
COMMENT ON COLUMN REA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE REFNH_OPC;
CREATE TABLE REFNH_OPC (
NODE_DE CHAR (32) NOT NULL ,
NODE_PARA CHAR (32) NOT NULL ,
NODE_REF_TYPE CHAR (32) NOT NULL ,
TIPO CHAR (4) NOT NULL CHECK (TIPO IN ('R1_1', 'R1_N')),
ATR_SAGE CHAR (15) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (NODE_DE, NODE_PARA, NODE_REF_TYPE)
);
COMMENT ON TABLE REFNH_OPC IS 'Referências não hierárquicas do modelo OPC UA';
COMMENT ON COLUMN REFNH_OPC.NODE_DE IS 'Id do node_opc Sage de origem';
COMMENT ON COLUMN REFNH_OPC.NODE_PARA IS 'Id do node_opc Sage de destino';
COMMENT ON COLUMN REFNH_OPC.NODE_REF_TYPE IS 'Id do node_opc com o NonHierarchical ReferenceType';
COMMENT ON COLUMN REFNH_OPC.TIPO IS 'Tipo 1:1 ou 1:N do NonHierarchical ReferenceType';
COMMENT ON COLUMN REFNH_OPC.ATR_SAGE IS 'Atributo(s) da entidade do SAGE que estabelece(m) o relacionamento';
COMMENT ON COLUMN REFNH_OPC.CMT IS 'Comentario';
COMMENT ON COLUMN REFNH_OPC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE REG;
CREATE TABLE REG (
ID CHAR (10) NOT NULL ,
NOME CHAR (30)  ,
PTC CHAR (20)  ,
SIS CHAR (10) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE REG IS 'Região';
COMMENT ON COLUMN REG.ID IS 'Identificador';
COMMENT ON COLUMN REG.NOME IS 'Nome';
COMMENT ON COLUMN REG.PTC IS 'Ocorrência da tabela PTC associada a região para atualização de limites de equipamento';
COMMENT ON COLUMN REG.SIS IS 'Sistema interligado associado a região geográfica';
COMMENT ON COLUMN REG.CMT IS 'Comentario';
COMMENT ON COLUMN REG.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE REGH;
CREATE TABLE REGH (
ID CHAR (10) NOT NULL ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE REGH IS 'Região hidrográfica';
COMMENT ON COLUMN REGH.ID IS 'Identificador';
COMMENT ON COLUMN REGH.NOME IS 'Nome';
COMMENT ON COLUMN REGH.CMT IS 'Comentario';
COMMENT ON COLUMN REGH.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE REGRA;
CREATE TABLE REGRA (
GRUPO CHAR (32) NOT NULL ,
HABILIT CHAR (3) DEFAULT 'SIM' CHECK (HABILIT IN ('NAO', 'SIM')),
ID CHAR (32) NOT NULL ,
NOME CHAR (42)  ,
PERMAX INT  NOT NULL ,
PERPOS INT  NOT NULL ,
PERPRE INT  NOT NULL ,
PERVAR INT  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE REGRA IS 'Regra para o registrador condicional';
COMMENT ON COLUMN REGRA.GRUPO IS 'Grupo de pontos associado a regra';
COMMENT ON COLUMN REGRA.HABILIT IS 'Indicador de habilitação da regra';
COMMENT ON COLUMN REGRA.ID IS 'Identificador da regra';
COMMENT ON COLUMN REGRA.NOME IS 'Nome da regra';
COMMENT ON COLUMN REGRA.PERMAX IS 'Período máximo de armazenamento considerando redisparos';
COMMENT ON COLUMN REGRA.PERPOS IS 'Período de armazenamento após o disparo da regra';
COMMENT ON COLUMN REGRA.PERPRE IS 'Período de armazenamento antes do disparo da regra';
COMMENT ON COLUMN REGRA.PERVAR IS 'Período de varredura para armazenamento do buffer circular';
COMMENT ON COLUMN REGRA.CMT IS 'Comentario';
COMMENT ON COLUMN REGRA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE RESV;
CREATE TABLE RESV (
ID CHAR (23) NOT NULL ,
NOME CHAR (50)  ,
RESV_JUS CHAR (23)  ,
RIO CHAR (23) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE RESV IS 'Reservatório';
COMMENT ON COLUMN RESV.ID IS 'Identificador';
COMMENT ON COLUMN RESV.NOME IS 'Nome';
COMMENT ON COLUMN RESV.RESV_JUS IS 'Identificador do reservatório à jusante deste reservatório';
COMMENT ON COLUMN RESV.RIO IS 'Rio associado ao reservatório';
COMMENT ON COLUMN RESV.CMT IS 'Comentario';
COMMENT ON COLUMN RESV.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE RFC;
CREATE TABLE RFC (
ORDEM CHAR (3) NOT NULL ,
PARC CHAR (48) NOT NULL ,
PNT CHAR (32) NOT NULL ,
TPPARC CHAR (3) NOT NULL CHECK (TPPARC IN ('PAF', 'PDF', 'PTF')),
TPPNT CHAR (3) NOT NULL CHECK (TPPNT IN ('PAS', 'PDS', 'PTS')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (PNT, TPPNT, ORDEM)
);
COMMENT ON TABLE RFC IS 'Relação de filtros compostos';
COMMENT ON COLUMN RFC.ORDEM IS 'Ordem da parcela no filtro';
COMMENT ON COLUMN RFC.PARC IS 'Ponto físico parcela do filtro';
COMMENT ON COLUMN RFC.PNT IS 'Identificador ponto resultante do filtro';
COMMENT ON COLUMN RFC.TPPARC IS 'Tipo da parcela do filtro';
COMMENT ON COLUMN RFC.TPPNT IS 'Tipo do ponto resultante do filtro';
COMMENT ON COLUMN RFC.CMT IS 'Comentario';
COMMENT ON COLUMN RFC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE RFI;
CREATE TABLE RFI (
ORDEM CHAR (3) NOT NULL ,
PNT CHAR (48) NOT NULL ,
TIPOP CHAR (3) NOT NULL CHECK (TIPOP IN ('PAF', 'PDF', 'PTF')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (PNT, TIPOP, ORDEM)
);
COMMENT ON TABLE RFI IS 'Relação de filtros do SCD';
COMMENT ON COLUMN RFI.ORDEM IS 'Ordem da parcela no filtro';
COMMENT ON COLUMN RFI.PNT IS 'Ponto físico associado';
COMMENT ON COLUMN RFI.TIPOP IS 'Tipo da parcela do filtro';
COMMENT ON COLUMN RFI.CMT IS 'Comentario';
COMMENT ON COLUMN RFI.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE RIO;
CREATE TABLE RIO (
BAH CHAR (10) NOT NULL ,
ID CHAR (23) NOT NULL ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE RIO IS 'Rio';
COMMENT ON COLUMN RIO.BAH IS 'Identificador da bacia hidrográfica associada ao rio';
COMMENT ON COLUMN RIO.ID IS 'Identificador';
COMMENT ON COLUMN RIO.NOME IS 'Nome';
COMMENT ON COLUMN RIO.CMT IS 'Comentario';
COMMENT ON COLUMN RIO.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE SBA;
CREATE TABLE SBA (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
EST CHAR (15) NOT NULL ,
ID CHAR (21) NOT NULL ,
NOME CHAR (46)  ,
NOMEBAR CHAR (12)  ,
NOPO CHAR (6)  ,
NUMBAR INT  DEFAULT 0 ,
TIPO CHAR (4) DEFAULT 'REAL' CHECK (TIPO IN ('FICT', 'REAL')),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE SBA IS 'Seção de barra';
COMMENT ON COLUMN SBA.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN SBA.ARE IS 'Identificador da área elétrica associada à seção de barra';
COMMENT ON COLUMN SBA.CIA IS 'Companhia associada';
COMMENT ON COLUMN SBA.EST IS 'Estação a que pertence';
COMMENT ON COLUMN SBA.ID IS 'Identificador';
COMMENT ON COLUMN SBA.NOME IS 'Nome';
COMMENT ON COLUMN SBA.NOMEBAR IS 'Nome do nó elétrico associado `a seção de barra';
COMMENT ON COLUMN SBA.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN SBA.NUMBAR IS 'Número externo do nó elétrico associado `a seção de barra';
COMMENT ON COLUMN SBA.TIPO IS 'Tipo da seção de barra';
COMMENT ON COLUMN SBA.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN SBA.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN SBA.CMT IS 'Comentario';
COMMENT ON COLUMN SBA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE SEV;
CREATE TABLE SEV (
ID CHAR (5) NOT NULL CHECK (ID IN ('ADVER', 'FATAL', 'NORML', 'PANIC', 'SNULA', 'URGEN')),
NOME CHAR (45) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE SEV IS 'Severidade';
COMMENT ON COLUMN SEV.ID IS 'Identificador da severidade';
COMMENT ON COLUMN SEV.NOME IS 'Nome da severidade';
COMMENT ON COLUMN SEV.CMT IS 'Comentario';
COMMENT ON COLUMN SEV.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE SIS;
CREATE TABLE SIS (
ID CHAR (10) NOT NULL ,
MVAB INT  DEFAULT 100 ,
NOME CHAR (40) NOT NULL ,
PTC CHAR (20)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE SIS IS 'Sistema interligado';
COMMENT ON COLUMN SIS.ID IS 'Identificador';
COMMENT ON COLUMN SIS.MVAB IS 'Potência base';
COMMENT ON COLUMN SIS.NOME IS 'Nome do sistema interligado';
COMMENT ON COLUMN SIS.PTC IS 'Ocorrência da tabela PTC associada ao sistema para atualização de limites de equipamento';
COMMENT ON COLUMN SIS.CMT IS 'Comentario';
COMMENT ON COLUMN SIS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE SITE;
CREATE TABLE SITE (
ID CHAR (10) NOT NULL ,
NOME CHAR (50)  ,
SERV_SAGEBD CHAR (50)  ,
SITE_BACKUP CHAR (10)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE SITE IS 'SSC-SAGE para funções de sincronismo';
COMMENT ON COLUMN SITE.ID IS 'Identificador';
COMMENT ON COLUMN SITE.NOME IS 'Nome';
COMMENT ON COLUMN SITE.SERV_SAGEBD IS 'Nome do servidor sagebd';
COMMENT ON COLUMN SITE.SITE_BACKUP IS 'Site backup';
COMMENT ON COLUMN SITE.CMT IS 'Comentario';
COMMENT ON COLUMN SITE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE SLAR;
CREATE TABLE SLAR (
ID CHAR (10) NOT NULL ,
LAR CHAR (10) NOT NULL ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE SLAR IS 'Subárea de carga';
COMMENT ON COLUMN SLAR.ID IS 'Identificador';
COMMENT ON COLUMN SLAR.LAR IS 'Área de carga associada à sub-área de carga';
COMMENT ON COLUMN SLAR.NOME IS 'Nome';
COMMENT ON COLUMN SLAR.CMT IS 'Comentario';
COMMENT ON COLUMN SLAR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE SME;
CREATE TABLE SME (
ID CHAR (10) NOT NULL ,
NOME CHAR (40) NOT NULL ,
SIS CHAR (10)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE SME IS 'Submercado';
COMMENT ON COLUMN SME.ID IS 'Identificador do Submercado';
COMMENT ON COLUMN SME.NOME IS 'Nome do Submercado';
COMMENT ON COLUMN SME.SIS IS 'Sistema elétrico associado ao Submercado';
COMMENT ON COLUMN SME.CMT IS 'Comentario';
COMMENT ON COLUMN SME.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE SUBCIA;
CREATE TABLE SUBCIA (
CIA CHAR (10)  ,
ID CHAR (2) NOT NULL ,
NOME CHAR (30) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE SUBCIA IS 'Sub-companhia';
COMMENT ON COLUMN SUBCIA.CIA IS 'Identificador da companhia associada à sub-companhia';
COMMENT ON COLUMN SUBCIA.ID IS 'Identificador do sub-companhia';
COMMENT ON COLUMN SUBCIA.NOME IS 'Nome do sub-companhia';
COMMENT ON COLUMN SUBCIA.CMT IS 'Comentario';
COMMENT ON COLUMN SUBCIA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE SUBSIS;
CREATE TABLE SUBSIS (
ID CHAR (10) NOT NULL ,
ID_SICCP_RX CHAR (11)  ,
ID_SICCP_TX CHAR (11)  ,
SITE CHAR (10)  ,
TPSUB CHAR (3)  CHECK (TPSUB IN ('', 'NAD', 'RTN')),
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE SUBSIS IS 'Subsistema computacional (base de dados) do SITE';
COMMENT ON COLUMN SUBSIS.ID IS 'Identificador do subsistema computacional (base de dados)';
COMMENT ON COLUMN SUBSIS.ID_SICCP_RX IS 'Identificação da ligação de rx siccp do subsistema';
COMMENT ON COLUMN SUBSIS.ID_SICCP_TX IS 'Identificação da ligação de tx siccp do subsistema';
COMMENT ON COLUMN SUBSIS.SITE IS 'Site a que pertence o subsistema computacional';
COMMENT ON COLUMN SUBSIS.TPSUB IS 'Identificação do tipo de subsistema';
COMMENT ON COLUMN SUBSIS.NOME IS 'Nome';
COMMENT ON COLUMN SUBSIS.CMT IS 'Comentario';
COMMENT ON COLUMN SUBSIS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TAC;
CREATE TABLE TAC (
ID CHAR (12) NOT NULL ,
INS CHAR (12)  ,
LIA INT  DEFAULT 0 ,
LSA INT  DEFAULT 0 ,
LSC CHAR (8) NOT NULL ,
TPAQS CHAR (4) DEFAULT 'ASAC' CHECK (TPAQS IN ('ACDI', 'ACSC', 'AFID', 'AFIL', 'ASAC', 'ASDE')),
NOME CHAR (45)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TAC IS 'Terminal de Aquisição e Controle';
COMMENT ON COLUMN TAC.ID IS 'Identificador do terminal de aquisição';
COMMENT ON COLUMN TAC.INS IS 'Instalação a que pertence';
COMMENT ON COLUMN TAC.LIA IS 'Limite inferior de alarmes';
COMMENT ON COLUMN TAC.LSA IS 'Limite superior de alarmes';
COMMENT ON COLUMN TAC.LSC IS 'Ligação associada a TAC';
COMMENT ON COLUMN TAC.TPAQS IS 'Tipo de aquisição';
COMMENT ON COLUMN TAC.NOME IS 'Nome da TAC';
COMMENT ON COLUMN TAC.CMT IS 'Comentario';
COMMENT ON COLUMN TAC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TAT;
CREATE TABLE TAT (
GRAND CHAR (5) DEFAULT 'KV' CHECK (GRAND IN ('GRAUS', 'KV')),
ID CHAR (25) NOT NULL ,
POS INT  NOT NULL ,
TERM CHAR (1) NOT NULL CHECK (TERM IN ('P', 'S', 'T')),
VAL REAL  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID, TERM, VAL, POS)
);
COMMENT ON TABLE TAT IS 'Tabela de taps';
COMMENT ON COLUMN TAT.GRAND IS 'Grandeza associada ao tap do transformador';
COMMENT ON COLUMN TAT.ID IS 'Identificador';
COMMENT ON COLUMN TAT.POS IS 'Posição do tap';
COMMENT ON COLUMN TAT.TERM IS 'Terminal associado ao tap';
COMMENT ON COLUMN TAT.VAL IS 'Valor do tap em KV ou GRAUS';
COMMENT ON COLUMN TAT.CMT IS 'Comentario';
COMMENT ON COLUMN TAT.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TCG;
CREATE TABLE TCG (
ACECTM INT  NOT NULL ,
CAG CHAR (6) NOT NULL ,
CMTRIP INT  NOT NULL ,
CNEMCX INT  NOT NULL ,
COATIM INT  NOT NULL ,
GNCTMX INT  NOT NULL ,
ID CHAR (6) NOT NULL ,
MINCLPR INT  DEFAULT 3 CHECK (MINCLPR >= 0 AND MINCLPR <= 20),
NOME CHAR (50)  ,
TDUTM INT  DEFAULT 5 ,
TMAXED INT  NOT NULL ,
TMINED INT  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TCG IS 'Temporizadores do CAG';
COMMENT ON COLUMN TCG.ACECTM IS 'Ciclos de CAG entre mensagens periódicas';
COMMENT ON COLUMN TCG.CAG IS 'Identificador da instância da tabela CAG associada';
COMMENT ON COLUMN TCG.CMTRIP IS 'Ciclos de CAG em realimentação cíclica para determinar estado de ruído';
COMMENT ON COLUMN TCG.CNEMCX IS 'Ciclos de CAG para determinar estado de realimentação cíclica';
COMMENT ON COLUMN TCG.COATIM IS 'Número mínimo de ciclos do CAG entre duas ações de controle';
COMMENT ON COLUMN TCG.GNCTMX IS 'Ciclos de CAG entre controles dentro da banda morta';
COMMENT ON COLUMN TCG.ID IS 'Identificador';
COMMENT ON COLUMN TCG.MINCLPR IS 'Número mínimo de ciclos de controle (agct*coatim) para envio de controle em sentido reverso';
COMMENT ON COLUMN TCG.NOME IS 'Nome';
COMMENT ON COLUMN TCG.TDUTM IS 'Ciclos de CAG para atualizar desvio de freq. a partir do erro de tempo';
COMMENT ON COLUMN TCG.TMAXED IS 'Máximo de ciclos de CAG máximo para ativar o cálculo de set-point';
COMMENT ON COLUMN TCG.TMINED IS 'Mínimo de ciclos de CAG para ativar o cálculo de set-point';
COMMENT ON COLUMN TCG.CMT IS 'Comentario';
COMMENT ON COLUMN TCG.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TCL;
CREATE TABLE TCL (
DESCR CHAR (80)  ,
FORMULA CHAR (1000)  ,
ID CHAR (11) NOT NULL ,
NCOLUNAS INT  DEFAULT 1 ,
NSEQ INT  DEFAULT 0 ,
TITULOS CHAR (128)  ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TCL IS 'Tipo de cálculo para pontos de medição';
COMMENT ON COLUMN TCL.DESCR IS 'Descrição';
COMMENT ON COLUMN TCL.FORMULA IS 'FORMULA';
COMMENT ON COLUMN TCL.ID IS 'Identificador do tipo de cálculo';
COMMENT ON COLUMN TCL.NCOLUNAS IS 'Número de colunas para apresentar no VisorTelas';
COMMENT ON COLUMN TCL.NSEQ IS 'Número sequencial';
COMMENT ON COLUMN TCL.TITULOS IS 'Títulos para tela parcela_calc';
COMMENT ON COLUMN TCL.NOME IS 'Nome';
COMMENT ON COLUMN TCL.CMT IS 'Comentario';
COMMENT ON COLUMN TCL.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TCTL;
CREATE TABLE TCTL (
ALR_CLOSE CHAR (11) NOT NULL ,
ALR_TRIP CHAR (11) NOT NULL ,
COR CHAR (25)  ,
DLG_CLOSE CHAR (30)  ,
DLG_TRIP CHAR (30)  ,
ID CHAR (5) NOT NULL ,
NSEQ INT  NOT NULL ,
TIP CHAR (3) NOT NULL CHECK (TIP IN ('CMD', 'CTL')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TCTL IS 'Tipo do ponto de controle';
COMMENT ON COLUMN TCTL.ALR_CLOSE IS 'Texto para alarme de controle close';
COMMENT ON COLUMN TCTL.ALR_TRIP IS 'Texto para alarme de controle trip';
COMMENT ON COLUMN TCTL.COR IS 'Cor de fundo do diálogo de controle';
COMMENT ON COLUMN TCTL.DLG_CLOSE IS 'Texto para diálogo de controle close';
COMMENT ON COLUMN TCTL.DLG_TRIP IS 'Texto para diálogo de controle trip';
COMMENT ON COLUMN TCTL.ID IS 'Identificador do tipo do ponto de controle';
COMMENT ON COLUMN TCTL.NSEQ IS 'Número sequencial';
COMMENT ON COLUMN TCTL.TIP IS 'Comunicação (CMD) ou Controle Tempo Real (CTL)';
COMMENT ON COLUMN TCTL.CMT IS 'Comentario';
COMMENT ON COLUMN TCTL.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TCV;
CREATE TABLE TCV (
DESCR CHAR (80) NOT NULL ,
ID CHAR (4) NOT NULL ,
NSEQ INT  NOT NULL ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TCV IS 'Tipo do conversor de protocolo';
COMMENT ON COLUMN TCV.DESCR IS 'Descrição';
COMMENT ON COLUMN TCV.ID IS 'Identificador do conversor de protocolo';
COMMENT ON COLUMN TCV.NSEQ IS 'Número sequencial';
COMMENT ON COLUMN TCV.NOME IS 'Nome';
COMMENT ON COLUMN TCV.CMT IS 'Comentario';
COMMENT ON COLUMN TCV.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TDD;
CREATE TABLE TDD (
ID CHAR (12) NOT NULL ,
LSC CHAR (8) NOT NULL ,
NOME CHAR (45)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TDD IS 'Terminal de distribuição de dados';
COMMENT ON COLUMN TDD.ID IS 'Identificador do terminal de distribuição';
COMMENT ON COLUMN TDD.LSC IS 'Ligação associada a TDD';
COMMENT ON COLUMN TDD.NOME IS 'Nome do terminal de distribuição';
COMMENT ON COLUMN TDD.CMT IS 'Comentario';
COMMENT ON COLUMN TDD.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TELA;
CREATE TABLE TELA (
ID CHAR (50) NOT NULL ,
NOME CHAR (60)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TELA IS 'Tela cadastrada na base de dados';
COMMENT ON COLUMN TELA.ID IS 'Identificador da tela cadastrada na base de dados';
COMMENT ON COLUMN TELA.NOME IS 'Nome';
COMMENT ON COLUMN TELA.CMT IS 'Comentario';
COMMENT ON COLUMN TELA.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TEMPO;
CREATE TABLE TEMPO (
HORARIO CHAR (30) NOT NULL ,
ID CHAR (8) NOT NULL ,
PATAMAR CHAR (3) NOT NULL CHECK (PATAMAR IN ('DIA', 'LEV', 'MAX', 'MED', 'MIN', 'NOT', 'PES')),
PTC CHAR (20)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TEMPO IS 'Tabela de tempo para atualização automática de limites';
COMMENT ON COLUMN TEMPO.HORARIO IS 'Descrição do horário associado a entrada na tabela de tempo';
COMMENT ON COLUMN TEMPO.ID IS 'Identificador da ocorrência na tabela de tempo - Máscara: TEMPO_XX Onde : XX= 1 a 99';
COMMENT ON COLUMN TEMPO.PATAMAR IS 'Tipo de patamar associado a entrada na tabela de tempo';
COMMENT ON COLUMN TEMPO.PTC IS 'Identificador do PTC (patamar) associado a tabela de tempo';
COMMENT ON COLUMN TEMPO.CMT IS 'Comentario';
COMMENT ON COLUMN TEMPO.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TEQ;
CREATE TABLE TEQ (
CFG_ALR_FILTRO CHAR (3) DEFAULT 'NAO' CHECK (CFG_ALR_FILTRO IN ('NAO', 'SIM')),
CFG_ALR_FILT_KV REAL  DEFAULT 0 ,
ID CHAR (3) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TEQ IS 'Tipo de Equipamento';
COMMENT ON COLUMN TEQ.CFG_ALR_FILTRO IS 'Indicador para Filtrar o envio de alarmes do Configurador por tipo de equipamento';
COMMENT ON COLUMN TEQ.CFG_ALR_FILT_KV IS 'Tensão nominal mínima para Filtrar o envio de alarmes do Configurador por tipo de equipamento';
COMMENT ON COLUMN TEQ.ID IS 'Identificador do tipo de equipamento';
COMMENT ON COLUMN TEQ.CMT IS 'Comentario';
COMMENT ON COLUMN TEQ.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TGL;
CREATE TABLE TGL (
GRAND CHAR (10) NOT NULL CHECK (GRAND IN ('AMP', 'MVA', 'MVAR', 'MW')),
GRUPO CHAR (6) DEFAULT 'SIS' CHECK (GRUPO IN ('ACO', 'CIA', 'REG', 'SIS')),
TPEQP CHAR (5) NOT NULL CHECK (TPEQP IN ('CAR', 'CNV', 'LDC', 'LTR', 'RAM', 'TR2', 'TR3')),
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (GRAND, TPEQP)
);
COMMENT ON TABLE TGL IS 'Tipo de grandeza para atualização automática de limites de equipamentos';
COMMENT ON COLUMN TGL.GRAND IS 'Tipo de grandeza para atualização automática de limites de equipamentos';
COMMENT ON COLUMN TGL.GRUPO IS 'Critério de agrupamento das grandezas em um mesmo patamar de carga para atualização de limites de equipamentos';
COMMENT ON COLUMN TGL.TPEQP IS 'Tipo de equipamento para atualização automática de limites de equipamentos';
COMMENT ON COLUMN TGL.NOME IS 'Nome';
COMMENT ON COLUMN TGL.CMT IS 'Comentario';
COMMENT ON COLUMN TGL.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TN1;
CREATE TABLE TN1 (
DESCR CHAR (80) NOT NULL ,
ID CHAR (4) NOT NULL ,
NSEQ INT  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TN1 IS 'Tipo de entidades físicas do nível 1';
COMMENT ON COLUMN TN1.DESCR IS 'Descrição do tipo de entidade física do nível 1';
COMMENT ON COLUMN TN1.ID IS 'Identificador';
COMMENT ON COLUMN TN1.NSEQ IS 'Número sequencial';
COMMENT ON COLUMN TN1.CMT IS 'Comentario';
COMMENT ON COLUMN TN1.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TN2;
CREATE TABLE TN2 (
DESCR CHAR (80) NOT NULL ,
ID CHAR (4) NOT NULL ,
NSEQ INT  NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TN2 IS 'Tipo de entidades física do nível 2';
COMMENT ON COLUMN TN2.DESCR IS 'Descrição do tipo de entidade física do nível 2';
COMMENT ON COLUMN TN2.ID IS 'Identificador';
COMMENT ON COLUMN TN2.NSEQ IS 'Número sequencial';
COMMENT ON COLUMN TN2.CMT IS 'Comentario';
COMMENT ON COLUMN TN2.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TND;
CREATE TABLE TND (
HORIZ INT  DEFAULT 2 ,
ID CHAR (4) NOT NULL ,
VARRED INT  DEFAULT 2 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TND IS 'Configuração para análise de tendência de medidas analógicas';
COMMENT ON COLUMN TND.HORIZ IS 'Horizonte para análise de tendência de medidas analógicas';
COMMENT ON COLUMN TND.ID IS 'Identificador para análise de tendência de medidas analógicas';
COMMENT ON COLUMN TND.VARRED IS 'Tempo varredura p/ análise tendência de medidas analógicas';
COMMENT ON COLUMN TND.CMT IS 'Comentario';
COMMENT ON COLUMN TND.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TPREDE;
CREATE TABLE TPREDE (
CFG_ALR_FILTRO CHAR (3) DEFAULT 'NAO' CHECK (CFG_ALR_FILTRO IN ('NAO', 'SIM')),
ID CHAR (20) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TPREDE IS 'Tipo de Rede';
COMMENT ON COLUMN TPREDE.CFG_ALR_FILTRO IS 'Indicador para Filtrar o envio de alarmes do Configurador por tipo de rede';
COMMENT ON COLUMN TPREDE.ID IS 'Identificador do tipo de rede';
COMMENT ON COLUMN TPREDE.CMT IS 'Comentario';
COMMENT ON COLUMN TPREDE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TR2;
CREATE TABLE TR2 (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
DEFA INT  DEFAULT 0 CHECK (DEFA >= -90 AND DEFA <= 90),
ECON CHAR (15)  ,
ID CHAR (25) NOT NULL ,
INS CHAR (12)  ,
LOCE CHAR (3)  CHECK (LOCE IN ('', 'PRI', 'SEC')),
LSADI REAL  DEFAULT 999999 ,
LSANO REAL  DEFAULT 999999 ,
LSFI REAL  DEFAULT 99999. CHECK (LSFI >= 0 AND LSFI <= 100000),
LSOP REAL  DEFAULT 99999. CHECK (LSOP >= 0 AND LSOP <= 100000),
LSUDI REAL  DEFAULT 999999 ,
LSUNO REAL  DEFAULT 999999 ,
NOME CHAR (46)  ,
NOPO CHAR (6)  ,
PRIM CHAR (15) NOT NULL ,
RPS REAL  DEFAULT 0. CHECK (RPS >= 0. AND RPS <= 10.),
SBPR REAL  DEFAULT 100. ,
SEC CHAR (15) NOT NULL ,
SNOM REAL  DEFAULT 9999 ,
TAPP REAL  DEFAULT 0 ,
TAPS REAL  DEFAULT 0 ,
TAT CHAR (25)  ,
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
TTERMP CHAR (1) DEFAULT 'S' CHECK (TTERMP IN ('A', 'F', 'M', 'S')),
TTERMS CHAR (1) DEFAULT 'S' CHECK (TTERMS IN ('A', 'F', 'M', 'S')),
VBPR REAL  DEFAULT 0. ,
XPS REAL  DEFAULT 0.01 CHECK (XPS >= 0.01 AND XPS <= 300.),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TR2 IS 'Transformador de dois terminais';
COMMENT ON COLUMN TR2.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN TR2.ARE IS 'Identificador da área elétrica associada ao transformador de 2 terminais';
COMMENT ON COLUMN TR2.CIA IS 'Companhia associada';
COMMENT ON COLUMN TR2.DEFA IS 'Ângulo de defasamento a ser adicionado ao ângulo de fase do primário';
COMMENT ON COLUMN TR2.ECON IS 'Estação controlada pelo transformador';
COMMENT ON COLUMN TR2.ID IS 'Identificador';
COMMENT ON COLUMN TR2.INS IS 'Instalacao associada ao transformador';
COMMENT ON COLUMN TR2.LOCE IS 'Localização ( lado ) da estação controlada pelo transformador';
COMMENT ON COLUMN TR2.LSADI IS 'Limite superior de advertência no período diurno';
COMMENT ON COLUMN TR2.LSANO IS 'Limite superior de advertência no período noturno';
COMMENT ON COLUMN TR2.LSFI IS 'Limite físico superior de potência aparente';
COMMENT ON COLUMN TR2.LSOP IS 'Limite operativo superior de potência aparente';
COMMENT ON COLUMN TR2.LSUDI IS 'Limite superior de urgência no período diurno';
COMMENT ON COLUMN TR2.LSUNO IS 'Limite superior de urgência no período noturno';
COMMENT ON COLUMN TR2.NOME IS 'Nome';
COMMENT ON COLUMN TR2.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN TR2.PRIM IS 'Estação do lado do primário';
COMMENT ON COLUMN TR2.RPS IS 'Resistência entre o primário e o secundário';
COMMENT ON COLUMN TR2.SBPR IS 'Potência base do primário utilizada no cálculo de rps e xps';
COMMENT ON COLUMN TR2.SEC IS 'Estação do lado do secundário';
COMMENT ON COLUMN TR2.SNOM IS 'Potência aparente nominal do transformador (MVA)';
COMMENT ON COLUMN TR2.TAPP IS 'Tap do lado primário';
COMMENT ON COLUMN TR2.TAPS IS 'Tap do lado secundário';
COMMENT ON COLUMN TR2.TAT IS 'Tabela de taps associada ao trafo de 2 terminais';
COMMENT ON COLUMN TR2.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN TR2.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN TR2.TTERMP IS 'Tipo de tap do terminal primário';
COMMENT ON COLUMN TR2.TTERMS IS 'Tipo de tap do terminal secundário';
COMMENT ON COLUMN TR2.VBPR IS 'Tensão base do primário utilizada no cálculo de rps e xps';
COMMENT ON COLUMN TR2.XPS IS 'Reatância entre o primário e o secundário';
COMMENT ON COLUMN TR2.CMT IS 'Comentario';
COMMENT ON COLUMN TR2.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TR3;
CREATE TABLE TR3 (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
ECON CHAR (15)  ,
ID CHAR (25) NOT NULL ,
INS CHAR (12)  ,
LOCE CHAR (3)  CHECK (LOCE IN ('', 'PRI', 'SEC', 'TER')),
LSADI REAL  DEFAULT 999999 ,
LSADIT REAL  DEFAULT 999999 ,
LSANO REAL  DEFAULT 999999 ,
LSANOT REAL  DEFAULT 999999 ,
LSFP REAL  DEFAULT 99999 CHECK (LSFP >= 0 AND LSFP <= 100000),
LSFT REAL  DEFAULT 99999 CHECK (LSFT >= 0 AND LSFT <= 100000),
LSOP REAL  DEFAULT 99999 CHECK (LSOP >= 0 AND LSOP <= 100000),
LSOT REAL  DEFAULT 99999 CHECK (LSOT >= 0 AND LSOT <= 100000),
LSUDI REAL  DEFAULT 999999 ,
LSUDIT REAL  DEFAULT 999999 ,
LSUNO REAL  DEFAULT 999999 ,
LSUNOT REAL  DEFAULT 999999 ,
MODPAR CHAR (3) DEFAULT 'XPS' CHECK (MODPAR IN ('XP', 'XPS')),
NOME CHAR (46)  ,
NOMEBAR CHAR (12)  ,
NOPO CHAR (6)  ,
NUMBAR INT  DEFAULT 0 ,
PRIM CHAR (15) NOT NULL ,
RPS REAL  DEFAULT 0. CHECK (RPS >= 0. AND RPS <= 10.),
RPT REAL  DEFAULT 0. CHECK (RPT >= 0. AND RPT <= 50.),
RST REAL  DEFAULT 0. CHECK (RST >= 0. AND RST <= 50.),
SBPR REAL  DEFAULT 100. ,
SBSE REAL  DEFAULT 100. ,
SEC CHAR (15) NOT NULL ,
SNOM REAL  DEFAULT 9999 ,
TAPP REAL  DEFAULT 0 ,
TAPS REAL  DEFAULT 0 ,
TAPT REAL  DEFAULT 0 ,
TAT CHAR (25)  ,
TERC CHAR (15) NOT NULL ,
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPREDE CHAR (20)  ,
TTERMP CHAR (1) DEFAULT 'S' CHECK (TTERMP IN ('A', 'F', 'M', 'S')),
TTERMS CHAR (1) DEFAULT 'S' CHECK (TTERMS IN ('A', 'F', 'M', 'S')),
TTERMT CHAR (1) DEFAULT 'S' CHECK (TTERMT IN ('A', 'F', 'M', 'S')),
VBPR REAL  DEFAULT 0. ,
VBSE REAL  DEFAULT 0. ,
XPS REAL  DEFAULT 0.01 CHECK (XPS >= -15. AND XPS <= 300.),
XPT REAL  DEFAULT 0.01 CHECK (XPT >= -15. AND XPT <= 300.),
XST REAL  DEFAULT 0.01 CHECK (XST >= -15. AND XST <= 300.),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TR3 IS 'Transformador de três terminais';
COMMENT ON COLUMN TR3.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN TR3.ARE IS 'Identificador da área elétrica associada ao transformador de 3 terminais';
COMMENT ON COLUMN TR3.CIA IS 'Companhia associada';
COMMENT ON COLUMN TR3.ECON IS 'Estação controlada pelo transformador';
COMMENT ON COLUMN TR3.ID IS 'Identificador';
COMMENT ON COLUMN TR3.INS IS 'Instalacao associada ao transformador';
COMMENT ON COLUMN TR3.LOCE IS 'Localização ( lado ) da estação controlada pelo transformador';
COMMENT ON COLUMN TR3.LSADI IS 'Limite superior de advertência no período diurno - primário/secundário';
COMMENT ON COLUMN TR3.LSADIT IS 'Limite superior de advertência no período diurno - terciário';
COMMENT ON COLUMN TR3.LSANO IS 'Limite superior de advertência no período noturno - primário/secundário';
COMMENT ON COLUMN TR3.LSANOT IS 'Limite superior de advertência no período noturno - terciário';
COMMENT ON COLUMN TR3.LSFP IS 'Limite físico superior de potência aparente - primário/secundário';
COMMENT ON COLUMN TR3.LSFT IS 'Limite físico superior de potência aparente - terciário';
COMMENT ON COLUMN TR3.LSOP IS 'Limite operativo superior de potência aparente - primário/secundário';
COMMENT ON COLUMN TR3.LSOT IS 'Limite operativo superior de potência aparente - terciário';
COMMENT ON COLUMN TR3.LSUDI IS 'Limite superior de urgência no período diurno - primário/secundário';
COMMENT ON COLUMN TR3.LSUDIT IS 'Limite superior de urgência no período diurno - terciário';
COMMENT ON COLUMN TR3.LSUNO IS 'Limite superior de urgência no período noturno - primário/secundário';
COMMENT ON COLUMN TR3.LSUNOT IS 'Limite superior de urgência no período noturno - terciário';
COMMENT ON COLUMN TR3.MODPAR IS 'Tipo de modelagem dos parâmetros do transformador';
COMMENT ON COLUMN TR3.NOME IS 'Nome';
COMMENT ON COLUMN TR3.NOMEBAR IS 'Nome do nó elétrico fictício do trafo de três terminais';
COMMENT ON COLUMN TR3.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN TR3.NUMBAR IS 'Número externo do nó elétrico fictício do trafo de três terminais';
COMMENT ON COLUMN TR3.PRIM IS 'Estação do lado do primário';
COMMENT ON COLUMN TR3.RPS IS 'Resistência entre o primário e o secundário';
COMMENT ON COLUMN TR3.RPT IS 'Resistência entre o primário e o terciário';
COMMENT ON COLUMN TR3.RST IS 'Resistência entre o secundário e o terciário';
COMMENT ON COLUMN TR3.SBPR IS 'Potência base do primário utilizada no cálculo de rps, xps, rpt e xpt';
COMMENT ON COLUMN TR3.SBSE IS 'Potência base do secundário utilizada no cálculo de rst e xst';
COMMENT ON COLUMN TR3.SEC IS 'Estação do lado do secundário';
COMMENT ON COLUMN TR3.SNOM IS 'Potência aparente nominal do transformador (MVA)';
COMMENT ON COLUMN TR3.TAPP IS 'Tap do lado primário';
COMMENT ON COLUMN TR3.TAPS IS 'Tap do lado secundário';
COMMENT ON COLUMN TR3.TAPT IS 'Tap do lado terciário';
COMMENT ON COLUMN TR3.TAT IS 'Tabela de taps associada ao trafo de três terminais';
COMMENT ON COLUMN TR3.TERC IS 'Estação do lado do terciário';
COMMENT ON COLUMN TR3.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN TR3.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN TR3.TTERMP IS 'Tipo de tap do terminal primário';
COMMENT ON COLUMN TR3.TTERMS IS 'Tipo de tap do terminal secundário';
COMMENT ON COLUMN TR3.TTERMT IS 'Tipo de tap do terminal terciário';
COMMENT ON COLUMN TR3.VBPR IS 'Tensão base do primário utilizada no cálculo de rps, xps, rpt e xpt';
COMMENT ON COLUMN TR3.VBSE IS 'Tensão base do secundário utilizada no cálculo de rst e xst';
COMMENT ON COLUMN TR3.XPS IS 'Reatância entre o primário e o secundário OU reatância do primário XP (depende de MODPAR)';
COMMENT ON COLUMN TR3.XPT IS 'Reatância entre o primário e o terciário OU reatância do terciário XT (depende de MODPAR)';
COMMENT ON COLUMN TR3.XST IS 'Reatância entre o secundário e o terciário OU reatância do secundário XS (depende de MODPAR)';
COMMENT ON COLUMN TR3.CMT IS 'Comentario';
COMMENT ON COLUMN TR3.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE TTP;
CREATE TABLE TTP (
DESCR CHAR (80) NOT NULL ,
ID CHAR (5) NOT NULL ,
NSEQ INT  NOT NULL ,
NOME CHAR (50)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE TTP IS 'Tipo dos transportadores de protocolo';
COMMENT ON COLUMN TTP.DESCR IS 'Descrição';
COMMENT ON COLUMN TTP.ID IS 'Identificador do transportador do protocolo';
COMMENT ON COLUMN TTP.NSEQ IS 'Número sequencial';
COMMENT ON COLUMN TTP.NOME IS 'Nome';
COMMENT ON COLUMN TTP.CMT IS 'Comentario';
COMMENT ON COLUMN TTP.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE UDE;
CREATE TABLE UDE (
AOR CHAR (20)  ,
CTLFLG CHAR (5) DEFAULT 'MAN' CHECK (CTLFLG IN ('BLR', 'MAN', 'MNT', 'OFF', 'RDY', 'REG', 'RMP')),
DESVNTRK REAL  DEFAULT 0. CHECK (DESVNTRK >= 0. AND DESVNTRK <= 100.),
HRBD REAL  DEFAULT 0.1 ,
ID CHAR (16) NOT NULL ,
IRMPG REAL  DEFAULT 0.5 ,
LRBD REAL  DEFAULT 0.1 ,
MAXTINZ INT  DEFAULT 500 ,
MULTCC INT  DEFAULT 0 ,
NZDAY INT  DEFAULT 15 ,
NZMON INT  DEFAULT 12 ,
NZYEAR INT  DEFAULT 2099 ,
PRMPG REAL  DEFAULT 0.5 ,
STPT CHAR (5) DEFAULT 'NAO' CHECK (STPT IN ('NAO', 'SIM')),
USI CHAR (12)  ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE UDE IS 'Unidade de despacho';
COMMENT ON COLUMN UDE.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN UDE.CTLFLG IS 'Modo de controle inicial da unidade de despacho';
COMMENT ON COLUMN UDE.DESVNTRK IS 'Desvio percentual para avaliação da condição de notracking';
COMMENT ON COLUMN UDE.HRBD IS 'Constante para cálculo do limite superior ótimo de potência ativa';
COMMENT ON COLUMN UDE.ID IS 'Identificador da unidade de despacho';
COMMENT ON COLUMN UDE.IRMPG IS 'Ganho integral quando em rampa';
COMMENT ON COLUMN UDE.LRBD IS 'Constante para cálculo do limite inferior ótimo de potência ativa';
COMMENT ON COLUMN UDE.MAXTINZ IS 'Tempo máximo permitido de operação em uma faixa não recomendada';
COMMENT ON COLUMN UDE.MULTCC IS 'Contador Multiplicador do Ciclo de Controle quando em Rampa';
COMMENT ON COLUMN UDE.NZDAY IS 'Dia em que vence o prazo para operação em faixa não recomendada';
COMMENT ON COLUMN UDE.NZMON IS 'Mês em que vence o prazo para operação em faixa não recomendada';
COMMENT ON COLUMN UDE.NZYEAR IS 'Ano em que vence o prazo para operação em faixa não recomendada';
COMMENT ON COLUMN UDE.PRMPG IS 'Ganho proporcional quando em rampa';
COMMENT ON COLUMN UDE.STPT IS 'Indica se a unidade de despacho é controlada por set-points ao invés de pulsos';
COMMENT ON COLUMN UDE.USI IS 'Usina associada à unidade de despacho';
COMMENT ON COLUMN UDE.CMT IS 'Comentario';
COMMENT ON COLUMN UDE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE UFE;
CREATE TABLE UFE (
ID CHAR (6) NOT NULL ,
NOME CHAR (25)  ,
REG CHAR (10) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE UFE IS 'Unidade Federativa';
COMMENT ON COLUMN UFE.ID IS 'Identificador';
COMMENT ON COLUMN UFE.NOME IS 'Nome';
COMMENT ON COLUMN UFE.REG IS 'Região geográfica associada à unidade federativa';
COMMENT ON COLUMN UFE.CMT IS 'Comentario';
COMMENT ON COLUMN UFE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE UFE_PAS;
CREATE TABLE UFE_PAS (
PAS CHAR (32) NOT NULL ,
UFE CHAR (6) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (UFE, PAS)
);
COMMENT ON TABLE UFE_PAS IS 'Relacionamento entre Unidade Federativa e Ponto de Medida Analogica do Previsor de Carga';
COMMENT ON COLUMN UFE_PAS.PAS IS 'Identificador do Ponto de media analogica associado ao Previsor de Carga';
COMMENT ON COLUMN UFE_PAS.UFE IS 'Identificador da Unidade Federativa';
COMMENT ON COLUMN UFE_PAS.CMT IS 'Comentario';
COMMENT ON COLUMN UFE_PAS.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE UGE;
CREATE TABLE UGE (
AOR CHAR (20)  ,
ARE CHAR (10)  ,
CIA CHAR (10)  ,
CONTR_TENSAO CHAR (3) DEFAULT 'SIM' CHECK (CONTR_TENSAO IN ('NAO', 'SIM')),
CPB CHAR (25)  ,
ECON CHAR (15)  ,
EST CHAR (15) NOT NULL ,
ESTAT REAL  DEFAULT 5 CHECK (ESTAT >= 0. AND ESTAT <= 20.),
FPOT REAL  DEFAULT 0 ,
GNDEL REAL  DEFAULT 0.0 ,
GNHRG REAL  DEFAULT 0.0 CHECK (GNHRG >= 0. AND GNHRG <= 12000.),
GNLRG REAL  DEFAULT 0.0 CHECK (GNLRG >= 0. AND GNLRG <= 12000.),
GNREG REAL  DEFAULT 0.0 ,
GNRLR REAL  DEFAULT 0.0 ,
GNRMX REAL  DEFAULT 0.0 CHECK (GNRMX >= 0. AND GNRMX <= 12000.),
GNUSTAT CHAR (3) DEFAULT 'RDY' CHECK (GNUSTAT IN ('ONL', 'RDY', 'SYC', 'UAV')),
GUGE CHAR (21)  ,
ID CHAR (21) NOT NULL ,
IMAX INT  DEFAULT 0 ,
INERCIA REAL  DEFAULT 0 ,
LIOPP REAL  DEFAULT 0.0 CHECK (LIOPP >= -50. AND LIOPP <= 600.),
LIOPQ REAL  DEFAULT 0.0 CHECK (LIOPQ >= -10000. AND LIOPQ <= 0.),
LSOPP REAL  DEFAULT 99999. CHECK (LSOPP >= 0. AND LSOPP <= 100000.),
LSOPQ REAL  DEFAULT 0.0 CHECK (LSOPQ >= 0. AND LSOPQ <= 10000.),
MODDIN INT  DEFAULT 0 CHECK (MODDIN >= 0 AND MODDIN <= 90),
MODDIN_CSI INT  DEFAULT 0 CHECK (MODDIN_CSI >= 0 AND MODDIN_CSI <= 90),
MODELO CHAR (21) DEFAULT 'GE-1980' ,
NMAQ INT  DEFAULT 1 ,
NOME CHAR (46)  ,
NOMEBAR_CSI CHAR (12)  ,
NOMEBAR_EQV CHAR (12)  ,
NOPO CHAR (6)  ,
NUMBAR_CSI INT  DEFAULT 0 ,
NUMBAR_EQV INT  DEFAULT 0 ,
PTU REAL  DEFAULT 0 ,
RLMAX REAL  DEFAULT 0.0 ,
RLMIN REAL  DEFAULT 0.0 ,
SNOM REAL  NOT NULL ,
TEMPART REAL  DEFAULT 20 ,
TPBASE CHAR (3) DEFAULT 'SIS' CHECK (TPBASE IN ('GER', 'SIS')),
TPMALHA CHAR (14)  CHECK (TPMALHA IN ('', 'LOCAL', 'REGIONAL_LOCAL', 'SISTEMICA')),
TPOP CHAR (8) DEFAULT 'GER' CHECK (TPOP IN ('BOMBA', 'GER', 'GER_SINC', 'REV', 'REV_SINC')),
TPREDE CHAR (20)  ,
TPTURB CHAR (11)  CHECK (TPTURB IN ('', 'BULBO', 'COMBUSTAO', 'FRANCIS', 'KAPLAN', 'PELTON', 'VAPOR')),
UDE CHAR (16)  ,
USI CHAR (12) NOT NULL ,
X2LD REAL  DEFAULT 0 ,
XD REAL  DEFAULT 0 ,
XL REAL  DEFAULT 0 ,
XLD REAL  DEFAULT 0 ,
XQ REAL  DEFAULT 0 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE UGE IS 'Unidade geradora';
COMMENT ON COLUMN UGE.AOR IS 'Identificador da AOR associada ao equipamento';
COMMENT ON COLUMN UGE.ARE IS 'Identificador da área elétrica associada à unidade geradora';
COMMENT ON COLUMN UGE.CIA IS 'Companhia associada';
COMMENT ON COLUMN UGE.CONTR_TENSAO IS 'Indica se a unidade geradora é capaz de efetuar controle de tensão';
COMMENT ON COLUMN UGE.CPB IS 'Curva de capabilidade';
COMMENT ON COLUMN UGE.ECON IS 'Estação controlada';
COMMENT ON COLUMN UGE.EST IS 'Estação a que pertence';
COMMENT ON COLUMN UGE.ESTAT IS 'Estatismo do regulador de velocidade';
COMMENT ON COLUMN UGE.FPOT IS 'Fator de potência nominal';
COMMENT ON COLUMN UGE.GNDEL IS 'Capacidade sustentada de geração em regulação (MW/min)';
COMMENT ON COLUMN UGE.GNHRG IS 'Limite superior de regulação inicial de potência ativa';
COMMENT ON COLUMN UGE.GNLRG IS 'Limite inferior de regulação inicial de potência ativa';
COMMENT ON COLUMN UGE.GNREG IS 'Banda relativa a geração corrente para considerar gerador em raise ou em lower';
COMMENT ON COLUMN UGE.GNRLR IS 'Capacidade sustentada de geração em rampa (MW/min)';
COMMENT ON COLUMN UGE.GNRMX IS 'Potência ativa máxima da unidade';
COMMENT ON COLUMN UGE.GNUSTAT IS 'Estado inicial do gerador';
COMMENT ON COLUMN UGE.GUGE IS 'Grupo de geradores à que pertence a unidade geradora';
COMMENT ON COLUMN UGE.ID IS 'Identificador';
COMMENT ON COLUMN UGE.IMAX IS 'Corrente máxima permitida nos enrolamentos do estator da unidade geradora em operação normal';
COMMENT ON COLUMN UGE.INERCIA IS 'Inércia da unidade geradora (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN UGE.LIOPP IS 'Limite inferior operativo de potência ativa';
COMMENT ON COLUMN UGE.LIOPQ IS 'Limite inferior operativo de potência reativa';
COMMENT ON COLUMN UGE.LSOPP IS 'Limite superior operativo de potência ativa';
COMMENT ON COLUMN UGE.LSOPQ IS 'Limite superior operativo de potência reativa';
COMMENT ON COLUMN UGE.MODDIN IS 'Modelo dinâmico do gerador';
COMMENT ON COLUMN UGE.MODDIN_CSI IS 'Modelo dinâmico do gerador quando esta` operando como sincrono';
COMMENT ON COLUMN UGE.MODELO IS 'Modelo/Ano do Gerador para perfil de monitoramento em zonas não recomendadas';
COMMENT ON COLUMN UGE.NMAQ IS 'Numero de maquinas associadas ao gerador modelado na BD';
COMMENT ON COLUMN UGE.NOME IS 'Nome';
COMMENT ON COLUMN UGE.NOMEBAR_CSI IS 'Nome da barra equivalente quando o gerador está operando como síncrono';
COMMENT ON COLUMN UGE.NOMEBAR_EQV IS 'Nome da barra equivalente para agrupamento de geradores';
COMMENT ON COLUMN UGE.NOPO IS 'Número operacional do equipamento';
COMMENT ON COLUMN UGE.NUMBAR_CSI IS 'Número da barra equivalente quando o gerador está operando como síncrono';
COMMENT ON COLUMN UGE.NUMBAR_EQV IS 'Número da barra equivalente para agrupamento de geradores';
COMMENT ON COLUMN UGE.PTU IS 'Limite mecânico da turbina';
COMMENT ON COLUMN UGE.RLMAX IS 'Taxa máxima de resposta do gerador (pick-up) (MW/ciclo CAG)';
COMMENT ON COLUMN UGE.RLMIN IS 'Taxa mínima de resposta do gerador (pick-up) (MW/ciclo CAG)';
COMMENT ON COLUMN UGE.SNOM IS 'Potência aparente nominal do gerador (MVA)';
COMMENT ON COLUMN UGE.TEMPART IS 'Tempo de partida (min)';
COMMENT ON COLUMN UGE.TPBASE IS 'Tipo de base de potência associada aos atributos INERCIA, XD, XQ, XL, XLD e XL2D';
COMMENT ON COLUMN UGE.TPMALHA IS 'Tipo de Malha associada ao equipamento';
COMMENT ON COLUMN UGE.TPOP IS 'Tipo de operação possível';
COMMENT ON COLUMN UGE.TPREDE IS 'Tipo de Rede associada ao equipamento';
COMMENT ON COLUMN UGE.TPTURB IS 'Tipo de tubina associada ao gerador';
COMMENT ON COLUMN UGE.UDE IS 'Unidade de despacho';
COMMENT ON COLUMN UGE.USI IS 'Usina';
COMMENT ON COLUMN UGE.X2LD IS 'Reatância subtransitória de eixo direto para estudos de curto-circuito (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN UGE.XD IS 'Reatância síncrona de eixo direto (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN UGE.XL IS 'Reatância de dispersão (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN UGE.XLD IS 'Reatância transitória de eixo direto para estudos de curto-circuito (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN UGE.XQ IS 'Reatância síncrona de eixo quadratura (base de potência definida no atributo tpbase)';
COMMENT ON COLUMN UGE.CMT IS 'Comentario';
COMMENT ON COLUMN UGE.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE UGT;
CREATE TABLE UGT (
FATPARMAX REAL  DEFAULT 0 CHECK (FATPARMAX >= 0. AND FATPARMAX <= 1.),
FATPARMIN REAL  DEFAULT 0 CHECK (FATPARMIN >= 0. AND FATPARMIN <= 1.),
FPGER REAL  DEFAULT 0.05 CHECK (FPGER >= 0 AND FPGER <= 0.2),
FQP REAL  DEFAULT 0.484 CHECK (FQP >= 0 AND FQP <= 0.62),
GNRMN REAL  DEFAULT 0.0 ,
GUGT CHAR (21)  ,
PCFIX REAL  DEFAULT 0 ,
UGE CHAR (21) NOT NULL ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (UGE)
);
COMMENT ON TABLE UGT IS 'Unidade geradora térmica';
COMMENT ON COLUMN UGT.FATPARMAX IS 'Fator de participação da unidade geradora a combustível na definição do limite máximo de potência ativa da unidade geradora a vapor do mesmo grupo';
COMMENT ON COLUMN UGT.FATPARMIN IS 'Fator de participação da unidade geradora a combustível na definição do limite mínimo de potência ativa da unidade geradora a vapor do mesmo grupo';
COMMENT ON COLUMN UGT.FPGER IS 'Fator que modela a parcela da carga do serviço auxiliar proporcional à geração ativa da unidade (pu)';
COMMENT ON COLUMN UGT.FQP IS 'Relação entre a potência reativa e a potência ativa da carga do serviço auxiliar (MVAR/MW)';
COMMENT ON COLUMN UGT.GNRMN IS 'Potência ativa mínima da unidade térmica';
COMMENT ON COLUMN UGT.GUGT IS 'Grupo de geradores Térmicos a que pertence a unidade geradora';
COMMENT ON COLUMN UGT.PCFIX IS 'Potência ativa fixa da carga do serviço auxiliar (MW)';
COMMENT ON COLUMN UGT.UGE IS 'Identificador';
COMMENT ON COLUMN UGT.CMT IS 'Comentario';
COMMENT ON COLUMN UGT.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE USI;
CREATE TABLE USI (
ACO CHAR (10)  ,
ID CHAR (12) NOT NULL ,
ORDFOLGA INT  DEFAULT 0 ,
PEQ CHAR (3) DEFAULT 'NAO' CHECK (PEQ IN ('NAO', 'SIM')),
PMAX REAL  DEFAULT 0 CHECK (PMAX >= 0. AND PMAX <= 20000.),
PSEUDO CHAR (3) DEFAULT 'NAO' CHECK (PSEUDO IN ('NAO', 'SIM')),
RESV CHAR (23)  ,
SGV CHAR (1) DEFAULT 'N' CHECK (SGV IN ('N', 'S')),
TIPO CHAR (15) DEFAULT 'HIDRO' CHECK (TIPO IN ('CICLO_COMBINADO', 'EOLICA', 'FOTOVOLTAICA', 'HELIOTERMICA', 'HIDRO', 'NUCLEAR', 'TERMICA')),
TIPOP CHAR (7)  CHECK (TIPOP IN ('', 'TIPO0', 'TIPO1', 'TIPO2', 'TIPO2A', 'TIPO2B', 'TIPO2C', 'TIPO3', 'TIPOC', 'TIPOONS')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE USI IS 'Usina';
COMMENT ON COLUMN USI.ACO IS 'Area de controle associada a usina';
COMMENT ON COLUMN USI.ID IS 'Identificador';
COMMENT ON COLUMN USI.ORDFOLGA IS 'Ordem de preferência para utilização como usina de folga';
COMMENT ON COLUMN USI.PEQ IS 'Indica pequena';
COMMENT ON COLUMN USI.PMAX IS 'Potência instalada';
COMMENT ON COLUMN USI.PSEUDO IS 'Indica pseudo-usina';
COMMENT ON COLUMN USI.RESV IS 'Reservatório associado à usina';
COMMENT ON COLUMN USI.SGV IS 'Indica se considera que a Geração Verificada seja a soma das UGEs (S) ou não (N)';
COMMENT ON COLUMN USI.TIPO IS 'Tipo';
COMMENT ON COLUMN USI.TIPOP IS 'Modo de operação da usina';
COMMENT ON COLUMN USI.CMT IS 'Comentario';
COMMENT ON COLUMN USI.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE UTR;
CREATE TABLE UTR (
CNF CHAR (16) NOT NULL ,
CXU CHAR (16) NOT NULL ,
ENUTR INT  DEFAULT 1 ,
ID CHAR (16) NOT NULL ,
NOME CHAR (50)  ,
NTENT INT  DEFAULT 3 ,
ORDEM CHAR (5) NOT NULL CHECK (ORDEM IN ('01PRI', '01REV', '02PRI', '02REV', '03PRI', '03REV', '04PRI', '04REV', '05PRI', '05REV', '06PRI', '06REV', '07PRI', '07REV', '08PRI', '08REV', '09PRI', '09REV', '10PRI', '10REV', '11PRI', '11REV', '12PRI', '12REV', '13PRI', '13REV', '14PRI', '14REV', '15PRI', '15REV', '16PRI', '16REV', '17PRI', '17REV', '18PRI', '18REV', '19PRI', '19REV', '20PRI', '20REV', 'PRI', 'REV')),
RESPT INT  DEFAULT 300 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE UTR IS 'Unidade terminal remota';
COMMENT ON COLUMN UTR.CNF IS 'Configuração física';
COMMENT ON COLUMN UTR.CXU IS 'Conexão da utr';
COMMENT ON COLUMN UTR.ENUTR IS 'Endereço da utr';
COMMENT ON COLUMN UTR.ID IS 'Identificador';
COMMENT ON COLUMN UTR.NOME IS 'Nome';
COMMENT ON COLUMN UTR.NTENT IS 'Número de tentativas';
COMMENT ON COLUMN UTR.ORDEM IS 'Ordem de prioridade para utilização';
COMMENT ON COLUMN UTR.RESPT IS 'Tempo para resposta';
COMMENT ON COLUMN UTR.CMT IS 'Comentario';
COMMENT ON COLUMN UTR.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE VAR_OPC;
CREATE TABLE VAR_OPC (
ID CHAR (32) NOT NULL ,
VALOR CHAR (73)  ,
DATA_TYPE CHAR (16) DEFAULT 'NULL' CHECK (DATA_TYPE IN ('BASEDATATYPE', 'BOOLEAN', 'BYTE', 'BYTESTRING', 'DATAVALUE', 'DATETIME', 'DIAGNOSTICINFO', 'DOUBLE', 'ENUMERATION', 'EXPANDEDNODEID', 'FLOAT', 'GUID', 'IMAGE', 'INT16', 'INT32', 'INT64', 'INTEGER', 'LOCALIZEDTEXT', 'NODEID', 'NULL', 'NUMBER', 'QUALIFIEDNAME', 'SBYTE', 'STATUSCODE', 'STRING', 'STRUCTURE', 'UINT16', 'UINT32', 'UINT64', 'UINTEGER', 'XMLELEMENT')),
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE VAR_OPC IS 'Variáveis do NameSpace Zero do modelo OPC UA';
COMMENT ON COLUMN VAR_OPC.ID IS 'DisplayName do Node OPC UA';
COMMENT ON COLUMN VAR_OPC.VALOR IS 'Valor dinâmico ou cadastral do Node OPC UA';
COMMENT ON COLUMN VAR_OPC.DATA_TYPE IS 'OPC UA Data Type';
COMMENT ON COLUMN VAR_OPC.CMT IS 'Comentario';
COMMENT ON COLUMN VAR_OPC.INC IS 'No. do include na tabela INC_DAT';
DROP TABLE VSI;
CREATE TABLE VSI (
ID CHAR (3) DEFAULT 'VSI' ,
LADVDIFANG REAL  DEFAULT 10 ,
LADVDIFMAG REAL  DEFAULT 5 ,
LURGDIFANG REAL  DEFAULT 30 ,
LURGDIFMAG REAL  DEFAULT 20 ,
MIN_ABAND INT  DEFAULT 5 ,
MXFREQDIFSYNC REAL  DEFAULT 0.1 ,
PERCENT_INF INT  DEFAULT 20 ,
PERCENT_REG INT  DEFAULT 10 ,
PERCENT_SUP INT  DEFAULT 10 ,
PERCENT_TERM INT  DEFAULT 5 ,
TIPO_FASOR CHAR (6) DEFAULT 'FASE' CHECK (TIPO_FASOR IN ('FASE', 'SEQPOS')),
TOLPREVDIFANG REAL  DEFAULT 10 ,
CMT VARCHAR (200)  ,
INC INT  DEFAULT -1 ,
PRIMARY KEY (ID)
);
COMMENT ON TABLE VSI IS 'Variáveis simples';
COMMENT ON COLUMN VSI.ID IS 'Id comum a todas as variáveis simples';
COMMENT ON COLUMN VSI.LADVDIFANG IS 'Limite de advertência para diferença de ângulo (aplicações fasoriais) - graus';
COMMENT ON COLUMN VSI.LADVDIFMAG IS 'Limite de advertência para diferença de magnitude (aplicações fasoriais) - porcento';
COMMENT ON COLUMN VSI.LURGDIFANG IS 'Limite de urgência para diferença de ângulo (aplicações fasoriais) - graus';
COMMENT ON COLUMN VSI.LURGDIFMAG IS 'Limite de urgência para diferença de magnitude (aplicações fasoriais) - porcento';
COMMENT ON COLUMN VSI.MIN_ABAND IS 'Minutos para alarmar site abandonado';
COMMENT ON COLUMN VSI.MXFREQDIFSYNC IS 'Tolerância máxima para diferença de frequência na reconexão de ilhas - Hz';
COMMENT ON COLUMN VSI.PERCENT_INF IS 'Percentual para indicar violação de usi hidráulica inferior a 50MW';
COMMENT ON COLUMN VSI.PERCENT_REG IS 'Percentual para indicar violação da reserva de regulação';
COMMENT ON COLUMN VSI.PERCENT_SUP IS 'Percentual para indicar violação de usi hidráulica superior a 50MW';
COMMENT ON COLUMN VSI.PERCENT_TERM IS 'Percentual para indicar violação de usi térmica';
COMMENT ON COLUMN VSI.TIPO_FASOR IS 'Define como os dados fasoriais serao fornecidos';
COMMENT ON COLUMN VSI.TOLPREVDIFANG IS 'Tolerância no desvio da diferença de ângulo em relação ao previsto - porcento';
COMMENT ON COLUMN VSI.CMT IS 'Comentario';
COMMENT ON COLUMN VSI.INC IS 'No. do include na tabela INC_DAT';
ALTER TABLE DTS ADD CONSTRAINT DTS_DTIP_unique UNIQUE (DTIP);
ALTER TABLE DTS ADD CONSTRAINT DTS_DTIP_unique UNIQUE (DTIP);
ALTER TABLE ACO ADD CONSTRAINT ACOrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ACO ADD CONSTRAINT ACOrefCOS FOREIGN KEY (COS) REFERENCES COS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ACO ADD CONSTRAINT ACOrefPTC FOREIGN KEY (PTC) REFERENCES PTC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ACO ADD CONSTRAINT ACOrefREG FOREIGN KEY (REG) REFERENCES REG(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ACO ADD CONSTRAINT ACOrefSIS FOREIGN KEY (SIS) REFERENCES SIS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ACO ADD CONSTRAINT ACOrefSITE FOREIGN KEY (SITE) REFERENCES SITE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE AOR ADD CONSTRAINT AORrefCOS FOREIGN KEY (COS) REFERENCES COS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ARE ADD CONSTRAINT ARErefSIS FOREIGN KEY (SIS) REFERENCES SIS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE AUTOZ ADD CONSTRAINT AUTOZrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE AUTOZ ADD CONSTRAINT AUTOZrefGRACT FOREIGN KEY (GRACT) REFERENCES GRACT(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE AUTOZ ADD CONSTRAINT AUTOZrefPAPEL FOREIGN KEY (PAPEL) REFERENCES PAPEL(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE BAH ADD CONSTRAINT BAHrefREGH FOREIGN KEY (REGH) REFERENCES REGH(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE BCP ADD CONSTRAINT BCPrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE BCP ADD CONSTRAINT BCPrefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE BCP ADD CONSTRAINT BCPrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE BCP ADD CONSTRAINT BCPrefECON FOREIGN KEY (ECON) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE BCP ADD CONSTRAINT BCPrefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE BCP ADD CONSTRAINT BCPrefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE BND ADD CONSTRAINT BNDrefCAG FOREIGN KEY (CAG) REFERENCES CAG(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CAG ADD CONSTRAINT CAGrefACO FOREIGN KEY (ACO) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CAR ADD CONSTRAINT CARrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CAR ADD CONSTRAINT CARrefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CAR ADD CONSTRAINT CARrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CAR ADD CONSTRAINT CARrefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CAR ADD CONSTRAINT CARrefGCA FOREIGN KEY (GCA) REFERENCES GCA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CAR ADD CONSTRAINT CARrefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CEA ADD CONSTRAINT CEArefCAG FOREIGN KEY (CAG) REFERENCES CAG(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CFSIS ADD CONSTRAINT CFSISrefSUBSIS_CORR FOREIGN KEY (SUBSIS_CORR) REFERENCES SUBSIS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CFU ADD CONSTRAINT CFUrefCAR FOREIGN KEY (CAR) REFERENCES CAR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CGF ADD CONSTRAINT CGFrefCGS FOREIGN KEY (CGS) REFERENCES CGS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CGF ADD CONSTRAINT CGFrefCNF FOREIGN KEY (CNF) REFERENCES CNF(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CGF ADD CONSTRAINT CGFrefNV2 FOREIGN KEY (NV2) REFERENCES NV2(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CGS ADD CONSTRAINT CGSrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CGS ADD CONSTRAINT CGSrefPINT FOREIGN KEY (PINT) REFERENCES PDS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CGS ADD CONSTRAINT CGSrefTAC FOREIGN KEY (TAC) REFERENCES TAC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CGS ADD CONSTRAINT CGSrefTIPOE FOREIGN KEY (TIPOE) REFERENCES TCTL(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CIA ADD CONSTRAINT CIArefACO FOREIGN KEY (ACO) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CIA ADD CONSTRAINT CIArefPTC FOREIGN KEY (PTC) REFERENCES PTC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CIA ADD CONSTRAINT CIArefSIS FOREIGN KEY (SIS) REFERENCES SIS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CLI ADD CONSTRAINT CLIrefACOE FOREIGN KEY (ACOE) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNC ADD CONSTRAINT CNCrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNC ADD CONSTRAINT CNCrefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNC ADD CONSTRAINT CNCrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNC ADD CONSTRAINT CNCrefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNC ADD CONSTRAINT CNCrefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNF ADD CONSTRAINT CNFrefLSC FOREIGN KEY (LSC) REFERENCES LSC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNM ADD CONSTRAINT CNMrefMUL FOREIGN KEY (MUL) REFERENCES MUL(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNV ADD CONSTRAINT CNVrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNV ADD CONSTRAINT CNVrefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNV ADD CONSTRAINT CNVrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNV ADD CONSTRAINT CNVrefELO FOREIGN KEY (ELO) REFERENCES ELO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNV ADD CONSTRAINT CNVrefESTAC FOREIGN KEY (ESTAC) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNV ADD CONSTRAINT CNVrefESTDC1 FOREIGN KEY (ESTDC1) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNV ADD CONSTRAINT CNVrefESTDC2 FOREIGN KEY (ESTDC2) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNV ADD CONSTRAINT CNVrefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE COS ADD CONSTRAINT COSrefSUBSIS FOREIGN KEY (SUBSIS) REFERENCES SUBSIS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CRE ADD CONSTRAINT CRErefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CRE ADD CONSTRAINT CRErefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CRE ADD CONSTRAINT CRErefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CRE ADD CONSTRAINT CRErefECON FOREIGN KEY (ECON) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CRE ADD CONSTRAINT CRErefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CRE ADD CONSTRAINT CRErefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSE ADD CONSTRAINT CSErefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSE ADD CONSTRAINT CSErefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSE ADD CONSTRAINT CSErefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSE ADD CONSTRAINT CSErefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSE ADD CONSTRAINT CSErefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSI ADD CONSTRAINT CSIrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSI ADD CONSTRAINT CSIrefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSI ADD CONSTRAINT CSIrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSI ADD CONSTRAINT CSIrefECON FOREIGN KEY (ECON) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSI ADD CONSTRAINT CSIrefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CSI ADD CONSTRAINT CSIrefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CTX ADD CONSTRAINT CTXrefCOS FOREIGN KEY (COS) REFERENCES COS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CXP ADD CONSTRAINT CXPrefPRO FOREIGN KEY (PRO) REFERENCES PRO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CXU ADD CONSTRAINT CXUrefGSD FOREIGN KEY (GSD) REFERENCES GSD(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE DCJ ADD CONSTRAINT DCJrefUSI FOREIGN KEY (USI) REFERENCES USI(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE DEQP ADD CONSTRAINT DEQPrefDTIP FOREIGN KEY (DTIP) REFERENCES DTS(DTIP) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE E2M ADD CONSTRAINT E2MrefMAP FOREIGN KEY (MAP) REFERENCES MAP(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ECA ADD CONSTRAINT ECArefCAG FOREIGN KEY (CAG) REFERENCES CAG(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ELE ADD CONSTRAINT ELErefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ELE ADD CONSTRAINT ELErefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ELE ADD CONSTRAINT ELErefELO FOREIGN KEY (ELO) REFERENCES ELO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ELE ADD CONSTRAINT ELErefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ELE ADD CONSTRAINT ELErefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ELO ADD CONSTRAINT ELOrefACO FOREIGN KEY (ACO) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ENM ADD CONSTRAINT ENMrefMUL FOREIGN KEY (MUL) REFERENCES MUL(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ENU ADD CONSTRAINT ENUrefCXU FOREIGN KEY (CXU) REFERENCES CXU(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE EST ADD CONSTRAINT ESTrefAFP FOREIGN KEY (AFP) REFERENCES AFP(NUMERO) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE EST ADD CONSTRAINT ESTrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE EST ADD CONSTRAINT ESTrefGBT FOREIGN KEY (GBT) REFERENCES GBT(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE EST ADD CONSTRAINT ESTrefINS FOREIGN KEY (INS) REFERENCES INS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE EST ADD CONSTRAINT ESTrefPTC FOREIGN KEY (PTC) REFERENCES PTC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ESTM ADD CONSTRAINT ESTMrefRIO FOREIGN KEY (RIO) REFERENCES RIO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE ESTM ADD CONSTRAINT ESTMrefUFE FOREIGN KEY (UFE) REFERENCES UFE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FASOR ADD CONSTRAINT FASORrefPAS_ANG FOREIGN KEY (PAS_ANG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FASOR ADD CONSTRAINT FASORrefPAS_AOSCANG FOREIGN KEY (PAS_AOSCANG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FASOR ADD CONSTRAINT FASORrefPAS_AOSCMAG FOREIGN KEY (PAS_AOSCMAG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FASOR ADD CONSTRAINT FASORrefPAS_DOSCANG FOREIGN KEY (PAS_DOSCANG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FASOR ADD CONSTRAINT FASORrefPAS_DOSCMAG FOREIGN KEY (PAS_DOSCMAG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FASOR ADD CONSTRAINT FASORrefPAS_FOSCANG FOREIGN KEY (PAS_FOSCANG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FASOR ADD CONSTRAINT FASORrefPAS_FOSCMAG FOREIGN KEY (PAS_FOSCMAG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FASOR ADD CONSTRAINT FASORrefPAS_MAG FOREIGN KEY (PAS_MAG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FASOR ADD CONSTRAINT FASORrefPMU FOREIGN KEY (PMU) REFERENCES PMU(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FLG ADD CONSTRAINT FLGrefCAG FOREIGN KEY (CAG) REFERENCES CAG(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FRD ADD CONSTRAINT FRDrefUFE FOREIGN KEY (UFE) REFERENCES UFE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FRD_PAS ADD CONSTRAINT FRD_PASrefFRD FOREIGN KEY (FRD) REFERENCES FRD(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE FRD_PAS ADD CONSTRAINT FRD_PASrefPAS FOREIGN KEY (PAS) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GBT ADD CONSTRAINT GBTrefCOR FOREIGN KEY (COR) REFERENCES COR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GCA ADD CONSTRAINT GCArefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GCA ADD CONSTRAINT GCArefSLAR FOREIGN KEY (SLAR) REFERENCES SLAR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GR2ACT ADD CONSTRAINT GR2ACTrefACAO FOREIGN KEY (ACAO) REFERENCES ACAO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GR2ACT ADD CONSTRAINT GR2ACTrefGRACT FOREIGN KEY (GRACT) REFERENCES GRACT(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GRCMP ADD CONSTRAINT GRCMPrefGRUPO FOREIGN KEY (GRUPO) REFERENCES GRUPO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GSD ADD CONSTRAINT GSDrefNO1 FOREIGN KEY (NO1) REFERENCES NOH(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GSD ADD CONSTRAINT GSDrefNO2 FOREIGN KEY (NO2) REFERENCES NOH(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GSD ADD CONSTRAINT GSDrefSITE FOREIGN KEY (SITE) REFERENCES SITE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GUGE ADD CONSTRAINT GUGErefACO FOREIGN KEY (ACO) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GUGT ADD CONSTRAINT GUGTrefACO FOREIGN KEY (ACO) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GUSI ADD CONSTRAINT GUSIrefACO FOREIGN KEY (ACO) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE INP ADD CONSTRAINT INPrefNOH FOREIGN KEY (NOH) REFERENCES NOH(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE INP ADD CONSTRAINT INPrefPRO FOREIGN KEY (PRO) REFERENCES PRO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE INS ADD CONSTRAINT INSrefACO FOREIGN KEY (ACO) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE INS ADD CONSTRAINT INSrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE INS ADD CONSTRAINT INSrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE INS ADD CONSTRAINT INSrefPTC FOREIGN KEY (PTC) REFERENCES PTC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE INS ADD CONSTRAINT INSrefSME FOREIGN KEY (SME) REFERENCES SME(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE INS ADD CONSTRAINT INSrefTELA FOREIGN KEY (TELA) REFERENCES TELA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE INS ADD CONSTRAINT INSrefUFE FOREIGN KEY (UFE) REFERENCES UFE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LAR ADD CONSTRAINT LARrefSIS FOREIGN KEY (SIS) REFERENCES SIS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LDC ADD CONSTRAINT LDCrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LDC ADD CONSTRAINT LDCrefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LDC ADD CONSTRAINT LDCrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LDC ADD CONSTRAINT LDCrefELO FOREIGN KEY (ELO) REFERENCES ELO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LDC ADD CONSTRAINT LDCrefINV FOREIGN KEY (INV) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LDC ADD CONSTRAINT LDCrefRET FOREIGN KEY (RET) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LDC ADD CONSTRAINT LDCrefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LDC ADD CONSTRAINT LDCrefUFE FOREIGN KEY (UFE) REFERENCES UFE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LIG ADD CONSTRAINT LIGrefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LSC ADD CONSTRAINT LSCrefCOS FOREIGN KEY (COS) REFERENCES COS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LSC ADD CONSTRAINT LSCrefGSD FOREIGN KEY (GSD) REFERENCES GSD(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LSC ADD CONSTRAINT LSCrefMAP FOREIGN KEY (MAP) REFERENCES MAP(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LSC ADD CONSTRAINT LSCrefSITE FOREIGN KEY (SITE) REFERENCES SITE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LSC ADD CONSTRAINT LSCrefTCV FOREIGN KEY (TCV) REFERENCES TCV(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LSC ADD CONSTRAINT LSCrefTTP FOREIGN KEY (TTP) REFERENCES TTP(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LTR ADD CONSTRAINT LTRrefACO FOREIGN KEY (ACO) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LTR ADD CONSTRAINT LTRrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LTR ADD CONSTRAINT LTRrefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LTR ADD CONSTRAINT LTRrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LTR ADD CONSTRAINT LTRrefCLI FOREIGN KEY (CLI) REFERENCES CLI(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LTR ADD CONSTRAINT LTRrefDE FOREIGN KEY (DE) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LTR ADD CONSTRAINT LTRrefPARA FOREIGN KEY (PARA) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LTR ADD CONSTRAINT LTRrefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LTR ADD CONSTRAINT LTRrefUFE FOREIGN KEY (UFE) REFERENCES UFE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE MUL ADD CONSTRAINT MULrefCNF FOREIGN KEY (CNF) REFERENCES CNF(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE MUL ADD CONSTRAINT MULrefGSD FOREIGN KEY (GSD) REFERENCES GSD(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE NOCT ADD CONSTRAINT NOCTrefCTX FOREIGN KEY (CTX) REFERENCES CTX(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE NOCT ADD CONSTRAINT NOCTrefNOH FOREIGN KEY (NOH) REFERENCES NOH(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE NV1 ADD CONSTRAINT NV1refCNF FOREIGN KEY (CNF) REFERENCES CNF(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE NV1 ADD CONSTRAINT NV1refTN1 FOREIGN KEY (TN1) REFERENCES TN1(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE NV2 ADD CONSTRAINT NV2refNV1 FOREIGN KEY (NV1) REFERENCES NV1(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE NV2 ADD CONSTRAINT NV2refTN2 FOREIGN KEY (TN2) REFERENCES TN2(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE OCR ADD CONSTRAINT OCRrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE OCR ADD CONSTRAINT OCRrefGRPOCR FOREIGN KEY (GRPOCR) REFERENCES GRPOCR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE OCR ADD CONSTRAINT OCRrefSEVER FOREIGN KEY (SEVER) REFERENCES SEV(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE OCR ADD CONSTRAINT OCRrefTELA FOREIGN KEY (TELA) REFERENCES TELA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAD ADD CONSTRAINT PADrefPAS FOREIGN KEY (PAS) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAD ADD CONSTRAINT PADrefTDD FOREIGN KEY (TDD) REFERENCES TDD(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAF ADD CONSTRAINT PAFrefNV2 FOREIGN KEY (NV2) REFERENCES NV2(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAPEL ADD CONSTRAINT PAPELrefCOS FOREIGN KEY (COS) REFERENCES COS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PASrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PASrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PASrefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PASrefOCR FOREIGN KEY (OCR) REFERENCES OCR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PASrefPMU FOREIGN KEY (PMU) REFERENCES PMU(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PASrefPTC FOREIGN KEY (PTC) REFERENCES PTC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PASrefTAC FOREIGN KEY (TAC) REFERENCES TAC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PASrefTCL FOREIGN KEY (TCL) REFERENCES TCL(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PASrefTELA FOREIGN KEY (TELA) REFERENCES TELA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDD ADD CONSTRAINT PDDrefPDS FOREIGN KEY (PDS) REFERENCES PDS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDD ADD CONSTRAINT PDDrefTDD FOREIGN KEY (TDD) REFERENCES TDD(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDF ADD CONSTRAINT PDFrefNV2 FOREIGN KEY (NV2) REFERENCES NV2(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDS ADD CONSTRAINT PDSrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDS ADD CONSTRAINT PDSrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDS ADD CONSTRAINT PDSrefOCR FOREIGN KEY (OCR) REFERENCES OCR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDS ADD CONSTRAINT PDSrefTAC FOREIGN KEY (TAC) REFERENCES TAC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDS ADD CONSTRAINT PDSrefTCL FOREIGN KEY (TCL) REFERENCES TCL(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDS ADD CONSTRAINT PDSrefTELA FOREIGN KEY (TELA) REFERENCES TELA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PFC ADD CONSTRAINT PFCrefDTIP FOREIGN KEY (DTIP) REFERENCES DTS(DTIP) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PFC ADD CONSTRAINT PFCrefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PIF ADD CONSTRAINT PIFrefNV2 FOREIGN KEY (NV2) REFERENCES NV2(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PIF ADD CONSTRAINT PIFrefPNT FOREIGN KEY (PNT) REFERENCES PIS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PIS ADD CONSTRAINT PISrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PIS ADD CONSTRAINT PISrefOCR FOREIGN KEY (OCR) REFERENCES OCR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PIS ADD CONSTRAINT PISrefTAC FOREIGN KEY (TAC) REFERENCES TAC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PMU ADD CONSTRAINT PMUrefINS FOREIGN KEY (INS) REFERENCES INS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PMU ADD CONSTRAINT PMUrefPDC FOREIGN KEY (PDC) REFERENCES PDC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PRCT ADD CONSTRAINT PRCTrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PRCT ADD CONSTRAINT PRCTrefCTX FOREIGN KEY (CTX) REFERENCES CTX(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PRCT ADD CONSTRAINT PRCTrefPRO FOREIGN KEY (PRO) REFERENCES PRO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PRFAS ADD CONSTRAINT PRFASrefFASOR1 FOREIGN KEY (FASOR1) REFERENCES FASOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PRFAS ADD CONSTRAINT PRFASrefFASOR2 FOREIGN KEY (FASOR2) REFERENCES FASOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PRFAS ADD CONSTRAINT PRFASrefPAS_DEVPRV FOREIGN KEY (PAS_DEVPRV) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PRFAS ADD CONSTRAINT PRFASrefPAS_DIFANG FOREIGN KEY (PAS_DIFANG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PRFAS ADD CONSTRAINT PRFASrefPAS_DIFFREQ FOREIGN KEY (PAS_DIFFREQ) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PRFAS ADD CONSTRAINT PRFASrefPAS_DIFMAG FOREIGN KEY (PAS_DIFMAG) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTC ADD CONSTRAINT PTCrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTC ADD CONSTRAINT PTCrefPAS FOREIGN KEY (PAS) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTC ADD CONSTRAINT PTCrefSITE FOREIGN KEY (SITE) REFERENCES SITE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTD ADD CONSTRAINT PTDrefPTS FOREIGN KEY (PTS) REFERENCES PTS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTD ADD CONSTRAINT PTDrefTDD FOREIGN KEY (TDD) REFERENCES TDD(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTF ADD CONSTRAINT PTFrefNV2 FOREIGN KEY (NV2) REFERENCES NV2(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTS ADD CONSTRAINT PTSrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTS ADD CONSTRAINT PTSrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTS ADD CONSTRAINT PTSrefOCR FOREIGN KEY (OCR) REFERENCES OCR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTS ADD CONSTRAINT PTSrefTAC FOREIGN KEY (TAC) REFERENCES TAC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTS ADD CONSTRAINT PTSrefTCL FOREIGN KEY (TCL) REFERENCES TCL(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTS ADD CONSTRAINT PTSrefTELA FOREIGN KEY (TELA) REFERENCES TELA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE QLD ADD CONSTRAINT QLDrefCOR FOREIGN KEY (COR) REFERENCES COR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RAM ADD CONSTRAINT RAMrefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RAM ADD CONSTRAINT RAMrefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RAM ADD CONSTRAINT RAMrefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RAM ADD CONSTRAINT RAMrefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RAM ADD CONSTRAINT RAMrefUFE FOREIGN KEY (UFE) REFERENCES UFE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE REA ADD CONSTRAINT REArefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE REA ADD CONSTRAINT REArefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE REA ADD CONSTRAINT REArefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE REA ADD CONSTRAINT REArefECON FOREIGN KEY (ECON) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE REA ADD CONSTRAINT REArefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE REA ADD CONSTRAINT REArefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE REG ADD CONSTRAINT REGrefPTC FOREIGN KEY (PTC) REFERENCES PTC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE REG ADD CONSTRAINT REGrefSIS FOREIGN KEY (SIS) REFERENCES SIS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE REGRA ADD CONSTRAINT REGRArefGRUPO FOREIGN KEY (GRUPO) REFERENCES GRUPO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RESV ADD CONSTRAINT RESVrefRIO FOREIGN KEY (RIO) REFERENCES RIO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RIO ADD CONSTRAINT RIOrefBAH FOREIGN KEY (BAH) REFERENCES BAH(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SBA ADD CONSTRAINT SBArefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SBA ADD CONSTRAINT SBArefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SBA ADD CONSTRAINT SBArefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SBA ADD CONSTRAINT SBArefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SBA ADD CONSTRAINT SBArefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SIS ADD CONSTRAINT SISrefPTC FOREIGN KEY (PTC) REFERENCES PTC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SLAR ADD CONSTRAINT SLARrefLAR FOREIGN KEY (LAR) REFERENCES LAR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SME ADD CONSTRAINT SMErefSIS FOREIGN KEY (SIS) REFERENCES SIS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SUBCIA ADD CONSTRAINT SUBCIArefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE SUBSIS ADD CONSTRAINT SUBSISrefSITE FOREIGN KEY (SITE) REFERENCES SITE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TAC ADD CONSTRAINT TACrefINS FOREIGN KEY (INS) REFERENCES INS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TAC ADD CONSTRAINT TACrefLSC FOREIGN KEY (LSC) REFERENCES LSC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TCG ADD CONSTRAINT TCGrefCAG FOREIGN KEY (CAG) REFERENCES CAG(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TCTL ADD CONSTRAINT TCTLrefCOR FOREIGN KEY (COR) REFERENCES COR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TDD ADD CONSTRAINT TDDrefLSC FOREIGN KEY (LSC) REFERENCES LSC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TEMPO ADD CONSTRAINT TEMPOrefPTC FOREIGN KEY (PTC) REFERENCES PTC(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR2 ADD CONSTRAINT TR2refAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR2 ADD CONSTRAINT TR2refARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR2 ADD CONSTRAINT TR2refCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR2 ADD CONSTRAINT TR2refECON FOREIGN KEY (ECON) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR2 ADD CONSTRAINT TR2refINS FOREIGN KEY (INS) REFERENCES INS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR2 ADD CONSTRAINT TR2refPRIM FOREIGN KEY (PRIM) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR2 ADD CONSTRAINT TR2refSEC FOREIGN KEY (SEC) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR2 ADD CONSTRAINT TR2refTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refECON FOREIGN KEY (ECON) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refINS FOREIGN KEY (INS) REFERENCES INS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refPRIM FOREIGN KEY (PRIM) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refSEC FOREIGN KEY (SEC) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refTERC FOREIGN KEY (TERC) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UDE ADD CONSTRAINT UDErefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UDE ADD CONSTRAINT UDErefUSI FOREIGN KEY (USI) REFERENCES USI(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UFE ADD CONSTRAINT UFErefREG FOREIGN KEY (REG) REFERENCES REG(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UFE_PAS ADD CONSTRAINT UFE_PASrefPAS FOREIGN KEY (PAS) REFERENCES PAS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UFE_PAS ADD CONSTRAINT UFE_PASrefUFE FOREIGN KEY (UFE) REFERENCES UFE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefAOR FOREIGN KEY (AOR) REFERENCES AOR(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefARE FOREIGN KEY (ARE) REFERENCES ARE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefCIA FOREIGN KEY (CIA) REFERENCES CIA(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefCPB FOREIGN KEY (CPB) REFERENCES CPB(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefECON FOREIGN KEY (ECON) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefEST FOREIGN KEY (EST) REFERENCES EST(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefGUGE FOREIGN KEY (GUGE) REFERENCES GUGE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefTPREDE FOREIGN KEY (TPREDE) REFERENCES TPREDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefUDE FOREIGN KEY (UDE) REFERENCES UDE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGE ADD CONSTRAINT UGErefUSI FOREIGN KEY (USI) REFERENCES USI(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGT ADD CONSTRAINT UGTrefGUGT FOREIGN KEY (GUGT) REFERENCES GUGT(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UGT ADD CONSTRAINT UGTrefUGE FOREIGN KEY (UGE) REFERENCES UGE(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE USI ADD CONSTRAINT USIrefACO FOREIGN KEY (ACO) REFERENCES ACO(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE USI ADD CONSTRAINT USIrefID FOREIGN KEY (ID) REFERENCES INS(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE USI ADD CONSTRAINT USIrefRESV FOREIGN KEY (RESV) REFERENCES RESV(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UTR ADD CONSTRAINT UTRrefCNF FOREIGN KEY (CNF) REFERENCES CNF(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE UTR ADD CONSTRAINT UTRrefCXU FOREIGN KEY (CXU) REFERENCES CXU(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
DROP TABLE CGS_PAC_REF;
CREATE TABLE CGS_PAC_REF (
  PAC_ref CHAR (32),
  TIPO_ref CHAR (3),
  PRIMARY KEY (PAC_ref, TIPO_ref),
  PTS CHAR (32),
  CONSTRAINT CGS_PAC_REFrefPTS  FOREIGN KEY (PTS) REFERENCES PTS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PDS CHAR (32),
  CONSTRAINT CGS_PAC_REFrefPDS  FOREIGN KEY (PDS) REFERENCES PDS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PAS CHAR (32),
  CONSTRAINT CGS_PAC_REFrefPAS  FOREIGN KEY (PAS) REFERENCES PAS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE DEQP_EQP_REF;
CREATE TABLE DEQP_EQP_REF (
  EQP_ref CHAR (25),
  TPEQP_ref CHAR (3),
  PRIMARY KEY (EQP_ref, TPEQP_ref),
  LTR CHAR (25),
  CONSTRAINT DEQP_EQP_REFrefLTR  FOREIGN KEY (LTR) REFERENCES LTR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR2 CHAR (25),
  CONSTRAINT DEQP_EQP_REFrefTR2  FOREIGN KEY (TR2) REFERENCES TR2(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSE CHAR (21),
  CONSTRAINT DEQP_EQP_REFrefCSE  FOREIGN KEY (CSE) REFERENCES CSE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RAM CHAR (25),
  CONSTRAINT DEQP_EQP_REFrefRAM  FOREIGN KEY (RAM) REFERENCES RAM(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REA CHAR (21),
  CONSTRAINT DEQP_EQP_REFrefREA  FOREIGN KEY (REA) REFERENCES REA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  BCP CHAR (21),
  CONSTRAINT DEQP_EQP_REFrefBCP  FOREIGN KEY (BCP) REFERENCES BCP(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CRE CHAR (21),
  CONSTRAINT DEQP_EQP_REFrefCRE  FOREIGN KEY (CRE) REFERENCES CRE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSI CHAR (21),
  CONSTRAINT DEQP_EQP_REFrefCSI  FOREIGN KEY (CSI) REFERENCES CSI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UGE CHAR (21),
  CONSTRAINT DEQP_EQP_REFrefUGE  FOREIGN KEY (UGE) REFERENCES UGE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CAR CHAR (25),
  CONSTRAINT DEQP_EQP_REFrefCAR  FOREIGN KEY (CAR) REFERENCES CAR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR3 CHAR (25),
  CONSTRAINT DEQP_EQP_REFrefTR3  FOREIGN KEY (TR3) REFERENCES TR3(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE E2M_IDPTO_REF;
CREATE TABLE E2M_IDPTO_REF (
  IDPTO_ref CHAR (32),
  TIPO_ref CHAR (3),
  PRIMARY KEY (IDPTO_ref, TIPO_ref),
  PDS CHAR (32),
  CONSTRAINT E2M_IDPTO_REFrefPDS  FOREIGN KEY (PDS) REFERENCES PDS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PAS CHAR (32),
  CONSTRAINT E2M_IDPTO_REFrefPAS  FOREIGN KEY (PAS) REFERENCES PAS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  OCR CHAR (25),
  CONSTRAINT E2M_IDPTO_REFrefOCR  FOREIGN KEY (OCR) REFERENCES OCR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PTS CHAR (32),
  CONSTRAINT E2M_IDPTO_REFrefPTS  FOREIGN KEY (PTS) REFERENCES PTS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE GRCMP_PNT_REF;
CREATE TABLE GRCMP_PNT_REF (
  PNT_ref CHAR (32),
  TPPNT_ref CHAR (5),
  PRIMARY KEY (PNT_ref, TPPNT_ref),
  GRUPO CHAR (32),
  CONSTRAINT GRCMP_PNT_REFrefGRUPO  FOREIGN KEY (GRUPO) REFERENCES GRUPO(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CGS CHAR (32),
  CONSTRAINT GRCMP_PNT_REFrefCGS  FOREIGN KEY (CGS) REFERENCES CGS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PDS CHAR (32),
  CONSTRAINT GRCMP_PNT_REFrefPDS  FOREIGN KEY (PDS) REFERENCES PDS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PAS CHAR (32),
  CONSTRAINT GRCMP_PNT_REFrefPAS  FOREIGN KEY (PAS) REFERENCES PAS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PTS CHAR (32),
  CONSTRAINT GRCMP_PNT_REFrefPTS  FOREIGN KEY (PTS) REFERENCES PTS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE GRUPO_PNT_REF;
CREATE TABLE GRUPO_PNT_REF (
  PNT_ref CHAR (32),
  TPPNT_ref CHAR (5),
  PRIMARY KEY (PNT_ref, TPPNT_ref),
  GRUPO CHAR (32),
  CONSTRAINT GRUPO_PNT_REFrefGRUPO  FOREIGN KEY (GRUPO) REFERENCES GRUPO(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PTS CHAR (32),
  CONSTRAINT GRUPO_PNT_REFrefPTS  FOREIGN KEY (PTS) REFERENCES PTS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PDS CHAR (32),
  CONSTRAINT GRUPO_PNT_REFrefPDS  FOREIGN KEY (PDS) REFERENCES PDS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PAS CHAR (32),
  CONSTRAINT GRUPO_PNT_REFrefPAS  FOREIGN KEY (PAS) REFERENCES PAS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CGS CHAR (32),
  CONSTRAINT GRUPO_PNT_REFrefCGS  FOREIGN KEY (CGS) REFERENCES CGS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE LIG_EQP_REF;
CREATE TABLE LIG_EQP_REF (
  EQP_ref CHAR (32),
  TPEQP_ref CHAR (3),
  PRIMARY KEY (EQP_ref, TPEQP_ref),
  LTR CHAR (25),
  CONSTRAINT LIG_EQP_REFrefLTR  FOREIGN KEY (LTR) REFERENCES LTR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  BCP CHAR (21),
  CONSTRAINT LIG_EQP_REFrefBCP  FOREIGN KEY (BCP) REFERENCES BCP(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CAR CHAR (25),
  CONSTRAINT LIG_EQP_REFrefCAR  FOREIGN KEY (CAR) REFERENCES CAR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CNC CHAR (32),
  CONSTRAINT LIG_EQP_REFrefCNC  FOREIGN KEY (CNC) REFERENCES CNC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CNV CHAR (25),
  CONSTRAINT LIG_EQP_REFrefCNV  FOREIGN KEY (CNV) REFERENCES CNV(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CRE CHAR (21),
  CONSTRAINT LIG_EQP_REFrefCRE  FOREIGN KEY (CRE) REFERENCES CRE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSE CHAR (21),
  CONSTRAINT LIG_EQP_REFrefCSE  FOREIGN KEY (CSE) REFERENCES CSE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSI CHAR (21),
  CONSTRAINT LIG_EQP_REFrefCSI  FOREIGN KEY (CSI) REFERENCES CSI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ELE CHAR (25),
  CONSTRAINT LIG_EQP_REFrefELE  FOREIGN KEY (ELE) REFERENCES ELE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  LDC CHAR (25),
  CONSTRAINT LIG_EQP_REFrefLDC  FOREIGN KEY (LDC) REFERENCES LDC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RAM CHAR (25),
  CONSTRAINT LIG_EQP_REFrefRAM  FOREIGN KEY (RAM) REFERENCES RAM(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REA CHAR (21),
  CONSTRAINT LIG_EQP_REFrefREA  FOREIGN KEY (REA) REFERENCES REA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SBA CHAR (21),
  CONSTRAINT LIG_EQP_REFrefSBA  FOREIGN KEY (SBA) REFERENCES SBA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR2 CHAR (25),
  CONSTRAINT LIG_EQP_REFrefTR2  FOREIGN KEY (TR2) REFERENCES TR2(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR3 CHAR (25),
  CONSTRAINT LIG_EQP_REFrefTR3  FOREIGN KEY (TR3) REFERENCES TR3(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UGE CHAR (21),
  CONSTRAINT LIG_EQP_REFrefUGE  FOREIGN KEY (UGE) REFERENCES UGE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE PAF_PNT_REF;
CREATE TABLE PAF_PNT_REF (
  PNT_ref CHAR (48),
  TPPNT_ref CHAR (3),
  PRIMARY KEY (PNT_ref, TPPNT_ref),
  PAS CHAR (32),
  CONSTRAINT PAF_PNT_REFrefPAS  FOREIGN KEY (PAS) REFERENCES PAS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PAD CHAR (48),
  CONSTRAINT PAF_PNT_REFrefPAD  FOREIGN KEY (PAD) REFERENCES PAD(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE PAS_EQP_REF;
CREATE TABLE PAS_EQP_REF (
  EQP_ref CHAR (32),
  TPEQP_ref CHAR (4),
  PRIMARY KEY (EQP_ref, TPEQP_ref),
  CAG CHAR (6),
  CONSTRAINT PAS_EQP_REFrefCAG  FOREIGN KEY (CAG) REFERENCES CAG(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ACO CHAR (10),
  CONSTRAINT PAS_EQP_REFrefACO  FOREIGN KEY (ACO) REFERENCES ACO(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  USI CHAR (12),
  CONSTRAINT PAS_EQP_REFrefUSI  FOREIGN KEY (USI) REFERENCES USI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UGE CHAR (21),
  CONSTRAINT PAS_EQP_REFrefUGE  FOREIGN KEY (UGE) REFERENCES UGE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UDE CHAR (16),
  CONSTRAINT PAS_EQP_REFrefUDE  FOREIGN KEY (UDE) REFERENCES UDE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR3 CHAR (25),
  CONSTRAINT PAS_EQP_REFrefTR3  FOREIGN KEY (TR3) REFERENCES TR3(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR2 CHAR (25),
  CONSTRAINT PAS_EQP_REFrefTR2  FOREIGN KEY (TR2) REFERENCES TR2(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SBA CHAR (21),
  CONSTRAINT PAS_EQP_REFrefSBA  FOREIGN KEY (SBA) REFERENCES SBA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REA CHAR (21),
  CONSTRAINT PAS_EQP_REFrefREA  FOREIGN KEY (REA) REFERENCES REA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RAM CHAR (25),
  CONSTRAINT PAS_EQP_REFrefRAM  FOREIGN KEY (RAM) REFERENCES RAM(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  BCP CHAR (21),
  CONSTRAINT PAS_EQP_REFrefBCP  FOREIGN KEY (BCP) REFERENCES BCP(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CIA CHAR (10),
  CONSTRAINT PAS_EQP_REFrefCIA  FOREIGN KEY (CIA) REFERENCES CIA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CNV CHAR (25),
  CONSTRAINT PAS_EQP_REFrefCNV  FOREIGN KEY (CNV) REFERENCES CNV(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CAR CHAR (25),
  CONSTRAINT PAS_EQP_REFrefCAR  FOREIGN KEY (CAR) REFERENCES CAR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UTR CHAR (16),
  CONSTRAINT PAS_EQP_REFrefUTR  FOREIGN KEY (UTR) REFERENCES UTR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TAC CHAR (12),
  CONSTRAINT PAS_EQP_REFrefTAC  FOREIGN KEY (TAC) REFERENCES TAC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  EST CHAR (15),
  CONSTRAINT PAS_EQP_REFrefEST  FOREIGN KEY (EST) REFERENCES EST(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UFE CHAR (6),
  CONSTRAINT PAS_EQP_REFrefUFE  FOREIGN KEY (UFE) REFERENCES UFE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SME CHAR (10),
  CONSTRAINT PAS_EQP_REFrefSME  FOREIGN KEY (SME) REFERENCES SME(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SIS CHAR (10),
  CONSTRAINT PAS_EQP_REFrefSIS  FOREIGN KEY (SIS) REFERENCES SIS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RIO CHAR (23),
  CONSTRAINT PAS_EQP_REFrefRIO  FOREIGN KEY (RIO) REFERENCES RIO(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REGH CHAR (10),
  CONSTRAINT PAS_EQP_REFrefREGH  FOREIGN KEY (REGH) REFERENCES REGH(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RESV CHAR (23),
  CONSTRAINT PAS_EQP_REFrefRESV  FOREIGN KEY (RESV) REFERENCES RESV(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REG CHAR (10),
  CONSTRAINT PAS_EQP_REFrefREG  FOREIGN KEY (REG) REFERENCES REG(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  INS CHAR (12),
  CONSTRAINT PAS_EQP_REFrefINS  FOREIGN KEY (INS) REFERENCES INS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  GUSI CHAR (12),
  CONSTRAINT PAS_EQP_REFrefGUSI  FOREIGN KEY (GUSI) REFERENCES GUSI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ESTM CHAR (23),
  CONSTRAINT PAS_EQP_REFrefESTM  FOREIGN KEY (ESTM) REFERENCES ESTM(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  COS CHAR (20),
  CONSTRAINT PAS_EQP_REFrefCOS  FOREIGN KEY (COS) REFERENCES COS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  BAH CHAR (10),
  CONSTRAINT PAS_EQP_REFrefBAH  FOREIGN KEY (BAH) REFERENCES BAH(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ARE CHAR (10),
  CONSTRAINT PAS_EQP_REFrefARE  FOREIGN KEY (ARE) REFERENCES ARE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CLI CHAR (28),
  CONSTRAINT PAS_EQP_REFrefCLI  FOREIGN KEY (CLI) REFERENCES CLI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  LTR CHAR (25),
  CONSTRAINT PAS_EQP_REFrefLTR  FOREIGN KEY (LTR) REFERENCES LTR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  LDC CHAR (25),
  CONSTRAINT PAS_EQP_REFrefLDC  FOREIGN KEY (LDC) REFERENCES LDC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ELE CHAR (25),
  CONSTRAINT PAS_EQP_REFrefELE  FOREIGN KEY (ELE) REFERENCES ELE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSI CHAR (21),
  CONSTRAINT PAS_EQP_REFrefCSI  FOREIGN KEY (CSI) REFERENCES CSI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSE CHAR (21),
  CONSTRAINT PAS_EQP_REFrefCSE  FOREIGN KEY (CSE) REFERENCES CSE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CRE CHAR (21),
  CONSTRAINT PAS_EQP_REFrefCRE  FOREIGN KEY (CRE) REFERENCES CRE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CNC CHAR (32),
  CONSTRAINT PAS_EQP_REFrefCNC  FOREIGN KEY (CNC) REFERENCES CNC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE PDF_PNT_REF;
CREATE TABLE PDF_PNT_REF (
  PNT_ref CHAR (48),
  TPPNT_ref CHAR (3),
  PRIMARY KEY (PNT_ref, TPPNT_ref),
  PDD CHAR (48),
  CONSTRAINT PDF_PNT_REFrefPDD  FOREIGN KEY (PDD) REFERENCES PDD(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PDS CHAR (32),
  CONSTRAINT PDF_PNT_REFrefPDS  FOREIGN KEY (PDS) REFERENCES PDS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE PDS_EQP_REF;
CREATE TABLE PDS_EQP_REF (
  EQP_ref CHAR (32),
  TPEQP_ref CHAR (4),
  PRIMARY KEY (EQP_ref, TPEQP_ref),
  BAH CHAR (10),
  CONSTRAINT PDS_EQP_REFrefBAH  FOREIGN KEY (BAH) REFERENCES BAH(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  BCP CHAR (21),
  CONSTRAINT PDS_EQP_REFrefBCP  FOREIGN KEY (BCP) REFERENCES BCP(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CAR CHAR (25),
  CONSTRAINT PDS_EQP_REFrefCAR  FOREIGN KEY (CAR) REFERENCES CAR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CNV CHAR (25),
  CONSTRAINT PDS_EQP_REFrefCNV  FOREIGN KEY (CNV) REFERENCES CNV(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CNC CHAR (32),
  CONSTRAINT PDS_EQP_REFrefCNC  FOREIGN KEY (CNC) REFERENCES CNC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CRE CHAR (21),
  CONSTRAINT PDS_EQP_REFrefCRE  FOREIGN KEY (CRE) REFERENCES CRE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSE CHAR (21),
  CONSTRAINT PDS_EQP_REFrefCSE  FOREIGN KEY (CSE) REFERENCES CSE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSI CHAR (21),
  CONSTRAINT PDS_EQP_REFrefCSI  FOREIGN KEY (CSI) REFERENCES CSI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ELE CHAR (25),
  CONSTRAINT PDS_EQP_REFrefELE  FOREIGN KEY (ELE) REFERENCES ELE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  LDC CHAR (25),
  CONSTRAINT PDS_EQP_REFrefLDC  FOREIGN KEY (LDC) REFERENCES LDC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  LTR CHAR (25),
  CONSTRAINT PDS_EQP_REFrefLTR  FOREIGN KEY (LTR) REFERENCES LTR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RAM CHAR (25),
  CONSTRAINT PDS_EQP_REFrefRAM  FOREIGN KEY (RAM) REFERENCES RAM(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REA CHAR (21),
  CONSTRAINT PDS_EQP_REFrefREA  FOREIGN KEY (REA) REFERENCES REA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SBA CHAR (21),
  CONSTRAINT PDS_EQP_REFrefSBA  FOREIGN KEY (SBA) REFERENCES SBA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR2 CHAR (25),
  CONSTRAINT PDS_EQP_REFrefTR2  FOREIGN KEY (TR2) REFERENCES TR2(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR3 CHAR (25),
  CONSTRAINT PDS_EQP_REFrefTR3  FOREIGN KEY (TR3) REFERENCES TR3(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UDE CHAR (16),
  CONSTRAINT PDS_EQP_REFrefUDE  FOREIGN KEY (UDE) REFERENCES UDE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UGE CHAR (21),
  CONSTRAINT PDS_EQP_REFrefUGE  FOREIGN KEY (UGE) REFERENCES UGE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  USI CHAR (12),
  CONSTRAINT PDS_EQP_REFrefUSI  FOREIGN KEY (USI) REFERENCES USI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ACO CHAR (10),
  CONSTRAINT PDS_EQP_REFrefACO  FOREIGN KEY (ACO) REFERENCES ACO(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CAG CHAR (6),
  CONSTRAINT PDS_EQP_REFrefCAG  FOREIGN KEY (CAG) REFERENCES CAG(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CIA CHAR (10),
  CONSTRAINT PDS_EQP_REFrefCIA  FOREIGN KEY (CIA) REFERENCES CIA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CLI CHAR (28),
  CONSTRAINT PDS_EQP_REFrefCLI  FOREIGN KEY (CLI) REFERENCES CLI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ARE CHAR (10),
  CONSTRAINT PDS_EQP_REFrefARE  FOREIGN KEY (ARE) REFERENCES ARE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  COS CHAR (20),
  CONSTRAINT PDS_EQP_REFrefCOS  FOREIGN KEY (COS) REFERENCES COS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ESTM CHAR (23),
  CONSTRAINT PDS_EQP_REFrefESTM  FOREIGN KEY (ESTM) REFERENCES ESTM(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  GUSI CHAR (12),
  CONSTRAINT PDS_EQP_REFrefGUSI  FOREIGN KEY (GUSI) REFERENCES GUSI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  INS CHAR (12),
  CONSTRAINT PDS_EQP_REFrefINS  FOREIGN KEY (INS) REFERENCES INS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REG CHAR (10),
  CONSTRAINT PDS_EQP_REFrefREG  FOREIGN KEY (REG) REFERENCES REG(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RESV CHAR (23),
  CONSTRAINT PDS_EQP_REFrefRESV  FOREIGN KEY (RESV) REFERENCES RESV(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REGH CHAR (10),
  CONSTRAINT PDS_EQP_REFrefREGH  FOREIGN KEY (REGH) REFERENCES REGH(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RIO CHAR (23),
  CONSTRAINT PDS_EQP_REFrefRIO  FOREIGN KEY (RIO) REFERENCES RIO(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SIS CHAR (10),
  CONSTRAINT PDS_EQP_REFrefSIS  FOREIGN KEY (SIS) REFERENCES SIS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SME CHAR (10),
  CONSTRAINT PDS_EQP_REFrefSME  FOREIGN KEY (SME) REFERENCES SME(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UFE CHAR (6),
  CONSTRAINT PDS_EQP_REFrefUFE  FOREIGN KEY (UFE) REFERENCES UFE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  EST CHAR (15),
  CONSTRAINT PDS_EQP_REFrefEST  FOREIGN KEY (EST) REFERENCES EST(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TAC CHAR (12),
  CONSTRAINT PDS_EQP_REFrefTAC  FOREIGN KEY (TAC) REFERENCES TAC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UTR CHAR (16),
  CONSTRAINT PDS_EQP_REFrefUTR  FOREIGN KEY (UTR) REFERENCES UTR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE PTF_PNT_REF;
CREATE TABLE PTF_PNT_REF (
  PNT_ref CHAR (48),
  TPPNT_ref CHAR (3),
  PRIMARY KEY (PNT_ref, TPPNT_ref),
  PTS CHAR (32),
  CONSTRAINT PTF_PNT_REFrefPTS  FOREIGN KEY (PTS) REFERENCES PTS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PTD CHAR (48),
  CONSTRAINT PTF_PNT_REFrefPTD  FOREIGN KEY (PTD) REFERENCES PTD(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE PTS_EQP_REF;
CREATE TABLE PTS_EQP_REF (
  EQP_ref CHAR (32),
  TPEQP_ref CHAR (4),
  PRIMARY KEY (EQP_ref, TPEQP_ref),
  ESTM CHAR (23),
  CONSTRAINT PTS_EQP_REFrefESTM  FOREIGN KEY (ESTM) REFERENCES ESTM(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CIA CHAR (10),
  CONSTRAINT PTS_EQP_REFrefCIA  FOREIGN KEY (CIA) REFERENCES CIA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CLI CHAR (28),
  CONSTRAINT PTS_EQP_REFrefCLI  FOREIGN KEY (CLI) REFERENCES CLI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ARE CHAR (10),
  CONSTRAINT PTS_EQP_REFrefARE  FOREIGN KEY (ARE) REFERENCES ARE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  BAH CHAR (10),
  CONSTRAINT PTS_EQP_REFrefBAH  FOREIGN KEY (BAH) REFERENCES BAH(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  COS CHAR (20),
  CONSTRAINT PTS_EQP_REFrefCOS  FOREIGN KEY (COS) REFERENCES COS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  GUSI CHAR (12),
  CONSTRAINT PTS_EQP_REFrefGUSI  FOREIGN KEY (GUSI) REFERENCES GUSI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  INS CHAR (12),
  CONSTRAINT PTS_EQP_REFrefINS  FOREIGN KEY (INS) REFERENCES INS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REG CHAR (10),
  CONSTRAINT PTS_EQP_REFrefREG  FOREIGN KEY (REG) REFERENCES REG(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RESV CHAR (23),
  CONSTRAINT PTS_EQP_REFrefRESV  FOREIGN KEY (RESV) REFERENCES RESV(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REGH CHAR (10),
  CONSTRAINT PTS_EQP_REFrefREGH  FOREIGN KEY (REGH) REFERENCES REGH(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RIO CHAR (23),
  CONSTRAINT PTS_EQP_REFrefRIO  FOREIGN KEY (RIO) REFERENCES RIO(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SIS CHAR (10),
  CONSTRAINT PTS_EQP_REFrefSIS  FOREIGN KEY (SIS) REFERENCES SIS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SME CHAR (10),
  CONSTRAINT PTS_EQP_REFrefSME  FOREIGN KEY (SME) REFERENCES SME(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UFE CHAR (6),
  CONSTRAINT PTS_EQP_REFrefUFE  FOREIGN KEY (UFE) REFERENCES UFE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  EST CHAR (15),
  CONSTRAINT PTS_EQP_REFrefEST  FOREIGN KEY (EST) REFERENCES EST(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TAC CHAR (12),
  CONSTRAINT PTS_EQP_REFrefTAC  FOREIGN KEY (TAC) REFERENCES TAC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UTR CHAR (16),
  CONSTRAINT PTS_EQP_REFrefUTR  FOREIGN KEY (UTR) REFERENCES UTR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  BCP CHAR (21),
  CONSTRAINT PTS_EQP_REFrefBCP  FOREIGN KEY (BCP) REFERENCES BCP(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CAR CHAR (25),
  CONSTRAINT PTS_EQP_REFrefCAR  FOREIGN KEY (CAR) REFERENCES CAR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CNV CHAR (25),
  CONSTRAINT PTS_EQP_REFrefCNV  FOREIGN KEY (CNV) REFERENCES CNV(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CNC CHAR (32),
  CONSTRAINT PTS_EQP_REFrefCNC  FOREIGN KEY (CNC) REFERENCES CNC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CRE CHAR (21),
  CONSTRAINT PTS_EQP_REFrefCRE  FOREIGN KEY (CRE) REFERENCES CRE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSE CHAR (21),
  CONSTRAINT PTS_EQP_REFrefCSE  FOREIGN KEY (CSE) REFERENCES CSE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CSI CHAR (21),
  CONSTRAINT PTS_EQP_REFrefCSI  FOREIGN KEY (CSI) REFERENCES CSI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ELE CHAR (25),
  CONSTRAINT PTS_EQP_REFrefELE  FOREIGN KEY (ELE) REFERENCES ELE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  LDC CHAR (25),
  CONSTRAINT PTS_EQP_REFrefLDC  FOREIGN KEY (LDC) REFERENCES LDC(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  LTR CHAR (25),
  CONSTRAINT PTS_EQP_REFrefLTR  FOREIGN KEY (LTR) REFERENCES LTR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RAM CHAR (25),
  CONSTRAINT PTS_EQP_REFrefRAM  FOREIGN KEY (RAM) REFERENCES RAM(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  REA CHAR (21),
  CONSTRAINT PTS_EQP_REFrefREA  FOREIGN KEY (REA) REFERENCES REA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  SBA CHAR (21),
  CONSTRAINT PTS_EQP_REFrefSBA  FOREIGN KEY (SBA) REFERENCES SBA(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR2 CHAR (25),
  CONSTRAINT PTS_EQP_REFrefTR2  FOREIGN KEY (TR2) REFERENCES TR2(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  TR3 CHAR (25),
  CONSTRAINT PTS_EQP_REFrefTR3  FOREIGN KEY (TR3) REFERENCES TR3(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UDE CHAR (16),
  CONSTRAINT PTS_EQP_REFrefUDE  FOREIGN KEY (UDE) REFERENCES UDE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  UGE CHAR (21),
  CONSTRAINT PTS_EQP_REFrefUGE  FOREIGN KEY (UGE) REFERENCES UGE(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  USI CHAR (12),
  CONSTRAINT PTS_EQP_REFrefUSI  FOREIGN KEY (USI) REFERENCES USI(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  ACO CHAR (10),
  CONSTRAINT PTS_EQP_REFrefACO  FOREIGN KEY (ACO) REFERENCES ACO(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  CAG CHAR (6),
  CONSTRAINT PTS_EQP_REFrefCAG  FOREIGN KEY (CAG) REFERENCES CAG(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE RAM_EQP_REF;
CREATE TABLE RAM_EQP_REF (
  EQP_ref CHAR (25),
  TPEQP_ref CHAR (3),
  PRIMARY KEY (EQP_ref, TPEQP_ref),
  LTR CHAR (25),
  CONSTRAINT RAM_EQP_REFrefLTR  FOREIGN KEY (LTR) REFERENCES LTR(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  RAM CHAR (25),
  CONSTRAINT RAM_EQP_REFrefRAM  FOREIGN KEY (RAM) REFERENCES RAM(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE RCA_PARC_REF;
CREATE TABLE RCA_PARC_REF (
  PARC_ref CHAR (32),
  TPPARC_ref CHAR (3),
  PRIMARY KEY (PARC_ref, TPPARC_ref),
  PTS CHAR (32),
  CONSTRAINT RCA_PARC_REFrefPTS  FOREIGN KEY (PTS) REFERENCES PTS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PAS CHAR (32),
  CONSTRAINT RCA_PARC_REFrefPAS  FOREIGN KEY (PAS) REFERENCES PAS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PDS CHAR (32),
  CONSTRAINT RCA_PARC_REFrefPDS  FOREIGN KEY (PDS) REFERENCES PDS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE RCA_PNT_REF;
CREATE TABLE RCA_PNT_REF (
  PNT_ref CHAR (32),
  TPPNT_ref CHAR (3),
  PRIMARY KEY (PNT_ref, TPPNT_ref),
  PAS CHAR (32),
  CONSTRAINT RCA_PNT_REFrefPAS  FOREIGN KEY (PAS) REFERENCES PAS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PTS CHAR (32),
  CONSTRAINT RCA_PNT_REFrefPTS  FOREIGN KEY (PTS) REFERENCES PTS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PDS CHAR (32),
  CONSTRAINT RCA_PNT_REFrefPDS  FOREIGN KEY (PDS) REFERENCES PDS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE RFC_PARC_REF;
CREATE TABLE RFC_PARC_REF (
  PARC_ref CHAR (48),
  TPPARC_ref CHAR (3),
  PRIMARY KEY (PARC_ref, TPPARC_ref),
  PTF CHAR (48),
  CONSTRAINT RFC_PARC_REFrefPTF  FOREIGN KEY (PTF) REFERENCES PTF(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PAF CHAR (48),
  CONSTRAINT RFC_PARC_REFrefPAF  FOREIGN KEY (PAF) REFERENCES PAF(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PDF CHAR (48),
  CONSTRAINT RFC_PARC_REFrefPDF  FOREIGN KEY (PDF) REFERENCES PDF(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE RFC_PNT_REF;
CREATE TABLE RFC_PNT_REF (
  PNT_ref CHAR (32),
  TPPNT_ref CHAR (3),
  PRIMARY KEY (PNT_ref, TPPNT_ref),
  PTS CHAR (32),
  CONSTRAINT RFC_PNT_REFrefPTS  FOREIGN KEY (PTS) REFERENCES PTS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PAS CHAR (32),
  CONSTRAINT RFC_PNT_REFrefPAS  FOREIGN KEY (PAS) REFERENCES PAS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PDS CHAR (32),
  CONSTRAINT RFC_PNT_REFrefPDS  FOREIGN KEY (PDS) REFERENCES PDS(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
DROP TABLE RFI_PNT_REF;
CREATE TABLE RFI_PNT_REF (
  PNT_ref CHAR (48),
  TIPOP_ref CHAR (3),
  PRIMARY KEY (PNT_ref, TIPOP_ref),
  PTF CHAR (48),
  CONSTRAINT RFI_PNT_REFrefPTF  FOREIGN KEY (PTF) REFERENCES PTF(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PAF CHAR (48),
  CONSTRAINT RFI_PNT_REFrefPAF  FOREIGN KEY (PAF) REFERENCES PAF(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED,
  PDF CHAR (48),
  CONSTRAINT RFI_PNT_REFrefPDF  FOREIGN KEY (PDF) REFERENCES PDF(ID)
  ON DELETE CASCADE
  DEFERRABLE
  INITIALLY DEFERRED);
ALTER TABLE CGS ADD CONSTRAINT CGS_PACref FOREIGN KEY (PAC, TIPO) REFERENCES CGS_PAC_REF(PAC_ref, TIPO_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE DEQP ADD CONSTRAINT DEQP_EQPref FOREIGN KEY (EQP, TPEQP) REFERENCES DEQP_EQP_REF(EQP_ref, TPEQP_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE E2M ADD CONSTRAINT E2M_IDPTOref FOREIGN KEY (IDPTO, TIPO) REFERENCES E2M_IDPTO_REF(IDPTO_ref, TIPO_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GRCMP ADD CONSTRAINT GRCMP_PNTref FOREIGN KEY (PNT, TPPNT) REFERENCES GRCMP_PNT_REF(PNT_ref, TPPNT_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE GRUPO ADD CONSTRAINT GRUPO_PNTref FOREIGN KEY (PNT, TPPNT) REFERENCES GRUPO_PNT_REF(PNT_ref, TPPNT_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE LIG ADD CONSTRAINT LIG_EQPref FOREIGN KEY (EQP, TPEQP) REFERENCES LIG_EQP_REF(EQP_ref, TPEQP_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAF ADD CONSTRAINT PAF_PNTref FOREIGN KEY (PNT, TPPNT) REFERENCES PAF_PNT_REF(PNT_ref, TPPNT_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PAS ADD CONSTRAINT PAS_EQPref FOREIGN KEY (EQP, TPEQP) REFERENCES PAS_EQP_REF(EQP_ref, TPEQP_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDF ADD CONSTRAINT PDF_PNTref FOREIGN KEY (PNT, TPPNT) REFERENCES PDF_PNT_REF(PNT_ref, TPPNT_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PDS ADD CONSTRAINT PDS_EQPref FOREIGN KEY (EQP, TPEQP) REFERENCES PDS_EQP_REF(EQP_ref, TPEQP_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTF ADD CONSTRAINT PTF_PNTref FOREIGN KEY (PNT, TPPNT) REFERENCES PTF_PNT_REF(PNT_ref, TPPNT_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE PTS ADD CONSTRAINT PTS_EQPref FOREIGN KEY (EQP, TPEQP) REFERENCES PTS_EQP_REF(EQP_ref, TPEQP_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RAM ADD CONSTRAINT RAM_EQPref FOREIGN KEY (EQP, TPEQP) REFERENCES RAM_EQP_REF(EQP_ref, TPEQP_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RCA ADD CONSTRAINT RCA_PARCref FOREIGN KEY (PARC, TPPARC) REFERENCES RCA_PARC_REF(PARC_ref, TPPARC_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RCA ADD CONSTRAINT RCA_PNTref FOREIGN KEY (PNT, TPPNT) REFERENCES RCA_PNT_REF(PNT_ref, TPPNT_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RFC ADD CONSTRAINT RFC_PARCref FOREIGN KEY (PARC, TPPARC) REFERENCES RFC_PARC_REF(PARC_ref, TPPARC_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RFC ADD CONSTRAINT RFC_PNTref FOREIGN KEY (PNT, TPPNT) REFERENCES RFC_PNT_REF(PNT_ref, TPPNT_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE RFI ADD CONSTRAINT RFI_PNTref FOREIGN KEY (PNT, TIPOP) REFERENCES RFI_PNT_REF(PNT_ref, TIPOP_ref) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE CNV ADD CONSTRAINT CNVrefTAT FOREIGN KEY (TAT) REFERENCES TAT(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR2 ADD CONSTRAINT TR2refTAT FOREIGN KEY (TAT) REFERENCES TAT(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
ALTER TABLE TR3 ADD CONSTRAINT TR3refTAT FOREIGN KEY (TAT) REFERENCES TAT(ID) ON DELETE CASCADE
DEFERRABLE
INITIALLY DEFERRED;
