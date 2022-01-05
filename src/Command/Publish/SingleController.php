<?php

namespace App\Command\Publish;

use Minicli\Command\CommandController;

class SingleController extends CommandController
{
    const ROOT_FOLDER = __DIR__ . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR . '..' . DIRECTORY_SEPARATOR;

    public function handle()
    {
        $file = $this->hasParam('file') ? $this->getParam('file') : 'World';
        $this->getPrinter()->display("Let's publish this file: $file!");

        $this->getPrinter()->display(file_get_contents(self::ROOT_FOLDER . $file));
    }
}