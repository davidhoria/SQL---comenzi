#Verificarea existentei mai multor facturi de la acelasi furnizor atat cu TVA incasare=DA cat si =NU

SELECT CODFUR FROM MIV0113 WHERE TIP_DOC=1 AND ANULAT=' '
GROUP BY CODFUR HAVING COUNT(DISTINCT IF(TVA_INCAS='DA','DA','NU'))>1
