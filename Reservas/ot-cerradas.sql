
--LISTA DE OT CERRADAS
SELECT TOP 500 C.REQ_NUMERO,C.REQ_PERSONAL_SOLIC,D.REQ_COMENTARIO1 ,C.REQ_ESTADO
from  INV_REQMATERIAL_CAB   AS  C INNER JOIN 
INV_REQMATERIAL_DET   AS  D  ON  C.REQ_NUMERO=D.REQ_NUMERO
WHERE  C.REQ_ESTADO='00'  AND REQ_COMENTARIO1  NOT IN (
SELECT  OF_COD FROM [011BDCOMUN].DBO.ORD_FAB  WHERE OF_ESTADO='ACTIVO')
AND D.REQ_COMENTARIO1!=' '
GROUP BY   C.REQ_NUMERO,C.REQ_PERSONAL_SOLIC,D.REQ_COMENTARIO1,C.REQ_ESTADO