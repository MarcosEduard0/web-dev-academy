<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ClienteModel;
use App\Models\TelefoneModel;

class Cliente extends BaseController
{
    private $clienteModel;
    private $telefoneModel;

    public function __construct()
    {
        $this->clienteModel = new ClienteModel();
        $this->telefoneModel = new TelefoneModel();
    }

    public function index()
    {
        $this->data['titulo'] = 'Início';
        $this->data['clientes'] =  $this->clienteModel->getClienteCivilDocumento()->paginate(10);
        $this->data['pagina'] = $this->clienteModel->pager;
        $this->data['body'] = view('Cliente/index', $this->data);

        return $this->render();
    }

    /**
     * Função para lidar com a página de adicionar um novo cliente
     */
    public function adicionar()
    {
        $this->data['titulo'] = 'Adicionar';
        $this->data['body'] = view('Cliente/formulario', $this->data);
        return $this->render();
    }

    /**
     * Função para lidar com a remoção de um cliente
     */
    public function deletar($id = null)
    {
        if ($this->clienteModel->delete($id)) {
            session()->setFlashdata('msg', msgbox('success', 'Cliente excluido com sucesso.'));
            return redirect('/');
        } else {
            echo "Erro.";
        }
    }

    /**
     * Salvamento
     */
    public function salvar()
    {
        if ($this->clienteModel->save($this->request->getPost())) {
            if ($this->telefoneModel->save($this->request->getPost())) {
                session()->setFlashdata('msg', msgbox('success', 'Cliente salvo com sucesso.'));
                return redirect('/');
            }
        } else {
            echo 'Erro.';
        }
    }

    /**
     * Função para lidar com uma edição do cliente
     */
    public function editar($id = null)
    {
        $this->data['titulo'] = 'Editar';
        $this->data['cliente'] = $this->clienteModel->getClienteCivilDocumento($id);
        $this->data['telefone'] = $this->telefoneModel->getTelefoneByCliente($id);
        $this->data['body'] = view('Cliente/formulario', $this->data);

        return $this->render();
    }
}
