SELECT a.nm_assinante, e.ds_endereco, t.n_fone FROM Assinante a JOIN Endereco e JOIN Telefone t;

SELECT a.nm_assinante, r.ds_ramo FROM Assinante a LEFT JOIN Ramo_Atividade r ON a.cd_ramo = r.cd_ramo ORDER BY r.ds_ramo, a.nm_assinante;

SELECT a.nm_assinante FROM Assinante a JOIN Municipio m ON a.cd_assinante = m.cd_municipio WHERE m.ds_municipio = 'Pelotas';

SELECT nm_assinante FROM Assinante WHERE cd_assinante = (SELECT cd_assinante FROM Telefone HAVING count(*) > 1);

 CREATE VIEW vw_relatorio_comercial AS SELECT a.nm_assinante, t.n_fone FROM Assinante a JOIN Telefone t ON a.cd_assinante = t.cd_assinante JOIN Endereco e ON a.cd_assinante = e.cd_assinante JOIN Municipio m ON e.cd_municipio = m.cd_municipio
