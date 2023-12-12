---Exemplo de como converter campos data do protheus no sql server
SELECT 
	CR_FILIAL, 
	CR_NUM,
	CR_TIPO,
	CR_USER, 
	CR_APROV,
	CR_NIVEL,
	CONVERT(CHAR,CAST(CR_EMISSAO AS datetime),103) AS [DT.EMISSAO],
	CONVERT(CHAR,CAST(CR_DATALIB AS datetime),103) AS [DT.LIBERCAO]
FROM 
	SCR010 
WHERE 
	D_E_L_E_T_ = '*'
