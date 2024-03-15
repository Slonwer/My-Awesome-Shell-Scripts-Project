<?php

namespace Core;

class ConfigController {

    private string $url;
    private array $urlArray;
    private string $urlController = '';
    private string $urlMetodo = '';

    public function __construct() {
        //echo "Carregou ";
        if (!empty(filter_input(INPUT_GET,'url', FILTER_DEFAULT))) { 
            $this->url = filter_input(INPUT_GET, 'url', FILTER_DEFAULT);
            var_dump($this->url);
            $this->urlArray = explode("/", $this->url);
           
            if ((isset($this->urlArray[0])) && (isset($this->urlArray[1]))) {
                $this->urlController = $this->urlArray[0];
                $this->urlMetodo = $this->urlArray[1];
            } else {
                $this->urlController = "Erro";
                $this->urlMetodo = "index";
            }
            echo "Controller: {$this->urlController} - Metodo: {$this->urlMetodo} <br>";
        } 
    }

    public function loadPage() {    
          
            $urlController =  ucwords($this->urlController);
            echo "Controllers/pagina";  
            $classLoad = "\\Sts\\Controllers\\"  . $urlController; 
            echo $classLoad . "<br>";
            var_dump($classLoad);
    
        }
    }

    
