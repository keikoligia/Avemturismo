select idpontoturistico from pais_pontoturistico where req.id = idpontoturistico in(
    select idpontoturistico from pontoturisticos
) 