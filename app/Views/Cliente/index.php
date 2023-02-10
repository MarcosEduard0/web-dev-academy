<?= session()->getFlashdata('msg') ?>
<div class="d-flex justify-content-center align-items-center container">
    <div class="container mt-5">
        <?= anchor(base_url('cliente/adicionar'), 'Novo cliente', ['class' => 'btn btn-success mb-3']) ?>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Data Nascimento</th>
                    <th>Estado Civil</th>
                    <th>Profissão</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <?php foreach ($clientes as $cliente) : ?>
                <tr>
                    <td><?= $cliente['cliente_id'] ?></td>
                    <td><?= $cliente['nome'] ?></td>
                    <td><?= $cliente['data_nascimento'] ?></td>
                    <td><?= $cliente['estado_civil'] ?></td>
                    <td><?= $cliente['profissao'] ?></td>
                    <td>
                        <?= anchor('cliente/editar/' . $cliente['cliente_id'], 'Editar', ['class' => 'btn btn-warning btn-sm']) ?>
                        <?= anchor('cliente/deletar/' . $cliente['cliente_id'], 'Excluir', ['onclick' => 'return confirma()', 'class' => 'btn btn-danger btn-sm']) ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </table>
        <?= $pagina->links('default', 'boostrap_pagination') ?>
    </div>
</div>