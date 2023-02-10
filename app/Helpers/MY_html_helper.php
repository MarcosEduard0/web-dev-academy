<?php
defined('SYSTEMPATH') or exit('No direct script access allowed');

function msgbox($tipo = 'error', $conteudo = '')
{
    $html = "<div class='alert alert-{$tipo} alert-dismissible fade show col-md-3 m-auto mt-5' role='alert'>
        {$conteudo}
        <button type='button' class='btn-close' data-bs-dismiss='alert' aria-label='Close'></button>
    </div>";
    return $html;
    // return "<p class='msgbox '$tipo''> '$conteudo'.</p>";
}
