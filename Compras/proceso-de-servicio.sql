--SERVICIOS

/*REQUERIMIENTO*/

--CABECERA
SELECT   GLOSA,* FROM REQUISC WHERE NROREQUI='0000003555' AND TIPOREQUI='RS'

--DETALLE
SELECT CENCOST,ORDFAB_REQUI,* FROM REQUISD WHERE NROREQUI='0000003555' AND TIPOREQUI='RS'

/*PESONAL SOLCITANTE*/
SELECT TOP 20 *  FROM  [011BDCOMUN].DBO.TABAYU  WHERE TCOD=12 
AND TCLAVE='95'



/*ORDEN DE SERVICIO*/

--CABECERA
SELECT OC_CNUMORD,OC_ORDFAB,* FROM COMOVC_S WHERE OC_CNRODOCREF='0000003555' AND OC_CDOCREF='RS'

--DETALLE
SELECT  CENTCOST,OC_DORDFAB,* FROM COMOVD_S  WHERE OC_CNUMORD='0000000004120' 


/*NOTA DE INGRESO*/

--CABECERA
SELECT TOP 10 CACODLIQ,CACODPRO,* FROM MOVINGCAB_S WHERE CANUMORD='0000000004120' AND CATD='NI'

--DETALLE
SELECT TOP 10* FROM MOVINGDET_S WHERE DENUMDOC='0000003434' AND DETD='NI'     


/*GUIAS*/
--CABCERA
SELECT TOP 10 CCNROFACTURA,CCCODPRO,CCORDFAB,CCNUMDOC,* FROM COMGUICAB WHERE CCORDCOM='0000000004120'  
AND CCCODPRO='20518721268'  AND CCTD='GS'

--DETALLE
SELECT TOP 10  DCCODPRO,DCORDFAB,DCNUMDOC,CCRFNUMDOC,* FROM COMGUIDET WHERE DCCODPRO='20518721268' AND  DCNUMDOC='002718' AND DCTD='GS'


/*FACTURA*/

--CABECERA
SELECT TOP 10 ORDFAB,* FROM COMCAB WHERE ID_COMCAB='16616'

--DETALLE
SELECT TOP 10 ORDFAB,* FROM COMDET where ID_COMCAB='16616'

