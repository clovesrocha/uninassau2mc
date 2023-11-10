CREATE TABLE `usuarios` (
  `cpf` integer PRIMARY KEY,
  `nome` varchar(55),
  `sobrenome` varchar(55),
  `idade` integer
);

CREATE TABLE `cadastro_pj` (
  `cnpj` integer PRIMARY KEY,
  `nomeemp` varchar(55),
  `descricao` varchar(55),
  `tipo_atv` integer
);

CREATE TABLE `produto` (
  `id` integer PRIMARY KEY,
  `nomeprod` varchar(55),
  `descricao` varchar(55),
  `codigo_qr` integer
);

ALTER TABLE `cadastro_pj` ADD FOREIGN KEY (`cnpj`) REFERENCES `usuarios` (`cpf`);

ALTER TABLE `produto` ADD FOREIGN KEY (`id`) REFERENCES `cadastro_pj` (`cnpj`);

ALTER TABLE `produto` ADD FOREIGN KEY (`id`) REFERENCES `usuarios` (`cpf`);
