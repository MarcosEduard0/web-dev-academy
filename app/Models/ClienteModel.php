<?php

namespace App\Models;

use CodeIgniter\Model;

class ClienteModel extends Model
{
    protected $DBGroup          = 'default';
    protected $table            = 'clientes';
    protected $primaryKey       = 'cliente_id';
    protected $useAutoIncrement = true;
    protected $insertID         = 0;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = true;
    protected $protectFields    = true;
    protected $allowedFields    = [
        'nome',
        'data_nascimento',
        'tipo_documento',
        'documento',
        'estado_civil',
        'possui_filhos',
        'profissao',
        'sexo',
        'endereco',
        'bairro',
        'cidade',
        'cep',
    ];

    // Datas
    protected $useTimestamps = True;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Validação
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Chamadas
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];

    public function getClienteCivilDocumento($id = false)
    {
        if ($id === false)
            return $this->join('estadocivil', 'estadocivil.estado_civil_id = clientes.estado_civil')
                ->join('tipodocumento', 'tipodocumento.documento_id = clientes.tipo_documento')
                ->orderBy('nome', 'ASC');
        else {
            return $this->join('estadocivil', 'estadocivil.estado_civil_id = clientes.estado_civil')
                ->join('tipodocumento', 'tipodocumento.documento_id = clientes.tipo_documento')
                ->getwhere(['cliente_id' => $id])
                ->getResultArray()[0];
        }
    }
}
