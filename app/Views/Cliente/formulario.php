<div class="d-flex justify-content-center align-items-center container">
    <div class="container mt-5">
        <h2 class="m-0">Novo Cliente</h2>
        <ul class="list-unstyled mb-0 py-3 pt-md-1">
            <li class="my-3 mx-0 border-top"></li>
        </ul>
        <?= form_open('cliente/salvar') ?>
        <div class="row g-3">
            <div class="col-md-4">
                <label for="nome" class="form-label">Nome / Razão Social</label>
                <input type="text" value="<?= isset($cliente['nome']) ? $cliente['nome'] : "" ?>" class="form-control" name="nome" required>
            </div>
            <div class="col-md-2">
                <label for="nascimento" class="form-label">Data de Nascimento</label>
                <input type="date" value="<?= isset($cliente['data_nascimento']) ? $cliente['data_nascimento'] : "" ?>" class="form-control" name="nascimento" required>
            </div>
            <div class="col-md-1">
                <label for="tipo_documento" class="form-label">Tipo Doc.</label>
                <?php
                $doc_opcoes = array('0' => 'CPF', '1' => 'CNPJ', '2' => 'Outro'); //Eu sei que essa nao é a melhor forma, porem estou simplificando
                $field = 'tipo_documento';
                $value = set_value($field, isset($cliente['documento_id']) ? $cliente['documento_id'] : '', FALSE);
                echo form_dropdown($field, $doc_opcoes, $value, 'tabindex="-1" class="form-select"');
                ?>
            </div>
            <div class="col-md-3">
                <label for="documento" class="form-label">Numeração</label>
                <input type="text" value="<?= isset($cliente['documento']) ? $cliente['documento'] : "" ?>" class=" form-control" name="documento">
            </div>

            <div class="col-md-2">
                <label for="estado_civil" class="form-label">Estado Civil</label>
                <?php
                $doc_opcoes = array('0' => 'Solteiro(a)', '1' => 'Casado(a)', '2' => 'Viuvo(a)'); //Eu sei que essa nao é a melhor forma, porem estou simplificando
                $field = 'estado_civil';
                $value = set_value($field, isset($cliente['estado_civil_id']) ? $cliente['estado_civil_id'] : '', FALSE);
                echo form_dropdown($field, $doc_opcoes, $value, 'tabindex="-1" class="form-select"');
                ?>
            </div>
            <div class="col-md-2">
                <label for="tipo_telefone_id" class="form-label">Tipo Telefone</label>
                <?php
                $doc_opcoes = array('1' => 'Residencial', '2' => 'Celular'); //Eu sei que essa nao é a melhor forma, porem estou simplificando
                $field = 'tipo_telefone_id';
                $value = set_value($field, isset($telefone['tipo_telefone_id']) ? $telefone['tipo_telefone_id'] : '', FALSE);
                echo form_dropdown($field, $doc_opcoes, $value, 'tabindex="-1" class="form-select"');
                ?>
            </div>
            <div class="col-md-3">
                <label for="telefone" class="form-label">Telefone</label>
                <input type="text" value="<?= isset($telefone['telefone']) ? $telefone['telefone'] : "" ?>" class=" form-control" name="telefone">
            </div>
            <div class="col-md-1">
                <label for="possui_filhos" class="form-label">Possui Filhos</label>
                <?php
                $doc_opcoes = array('0' => 'Não', '1' => 'Sim');
                $field = 'possui_filhos';
                $value = set_value($field, isset($cliente['possui_filhos']) ? $cliente['possui_filhos'] : '', FALSE);
                echo form_dropdown($field, $doc_opcoes, $value, 'tabindex="-1" class="form-select"');
                ?>
            </div>
            <div class="col-md-4">
                <label for="profissao" class="form-label">Profissão</label>
                <input type="text" value="<?= isset($cliente['profissao']) ? $cliente['profissao'] : "" ?>" class="form-control" name="profissao">
            </div>
            <div class="col-md-2">
                <label for="sexo" class="form-label">Gênero</label>
                <?php
                $doc_opcoes = array('0' => 'Homem Cis', '1' => 'Mulher Cis', '2' => 'Mulher Trans', '3' => 'Homem Trans'); //Eu sei que essa nao é a melhor forma, porem estou simplificando
                $field = 'sexo';
                $value = set_value($field, isset($cliente['sexo']) ? $cliente['sexo'] : '', FALSE);
                echo form_dropdown($field, $doc_opcoes, $value, 'tabindex="-1" class="form-select"');
                ?>
            </div>
            <div class="col-md-5">
                <label for="endereco" class="form-label">Endereço</label>
                <input type="text" value="<?= isset($cliente['endereco']) ? $cliente['endereco'] : "" ?>" class="form-control" name="endereco">
            </div>
            <div class="col-md-2">
                <label for="bairro" class="form-label">Bairro</label>
                <input type="text" value="<?= isset($cliente['bairro']) ? $cliente['bairro'] : "" ?>" class="form-control" name="bairro">
            </div>
            <div class="col-md-3">
                <label for="cidade" class="form-label">Cidade</label>
                <input type="text" value="<?= isset($cliente['cidade']) ? $cliente['cidade'] : "" ?>" class="form-control" name="cidade">
            </div>

            <div class="col-md-2">
                <label for="cep" class="form-label">Cep</label>
                <input type="text" value="<?= isset($cliente['cep']) ? $cliente['cep'] : "" ?>" class="form-control" name="cep">

            </div>
            <?= form_close() ?>
            <div class="text-center mt-5">
                <input type="submit" value="<?= isset($cliente) ? 'Atualizar' : 'Adicionar' ?>" class="btn btn-primary"></input>
                <input type="hidden" name="cliente_id" value="<?= isset($cliente['cliente_id']) ? $cliente['cliente_id'] : "" ?>">
                <input type="hidden" name="telefone_id" value="<?= isset($telefone['telefone_id']) ? $telefone['telefone_id'] : "" ?>">
                <span class="font-weight-bold text-danger cursor"><?= anchor('/', 'Voltar', ['class' => 'btn btn-link']) ?></span>
            </div>
        </div>
    </div>
</div>