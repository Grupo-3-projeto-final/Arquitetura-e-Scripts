-- Criar a tabela Status Pagamento
CREATE TABLE status_pagamento (
    id_status_pagamento SERIAL PRIMARY KEY,
    dsc_status_pagamento VARCHAR(50)
);

-- Criar a tabela Tipo Pagamento 
CREATE TABLE tipo_pagamento (
    id_tipo_pagamento SERIAL PRIMARY KEY,
    dsc_tipo_pagamento VARCHAR(50)
);

-- Criar a tabela Aluno Pagamento 
CREATE TABLE aluno_pagamento (
    id_pagamento SERIAL PRIMARY KEY,
    id_aluno INT,
    id_curso INT,
    url_arquivo VARCHAR(255),
    data_vencimento TIMESTAMP,
    valor DOUBLE PRECISION,
    id_status_pagamento INT REFERENCES status_pagamento (id_status_pagamento),
    id_tipo_pagamento INT REFERENCES tipo_pagamento (id_tipo_pagamento)
);


---------------------------------------------------------------------------------------------------------


-- Inserir os registros na tabela StatusPagamento
INSERT INTO status_pagamento (dsc_status_pagamento) VALUES ('Pendente');
INSERT INTO status_pagamento (dsc_status_pagamento) VALUES ('Recusado');
INSERT INTO status_pagamento (dsc_status_pagamento) VALUES ('Aprovado');

-- Inserir os registros na tabela TipoPagamento
INSERT INTO tipo_pagamento (dsc_tipo_pagamento) VALUES ('Boleto');
INSERT INTO tipo_pagamento (dsc_tipo_pagamento) VALUES ('Pix');