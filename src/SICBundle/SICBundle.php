<?php

namespace SICBundle;

use Symfony\Component\HttpKernel\Bundle\Bundle;

class SICBundle extends Bundle
{
    /* Para hacer override de la plantilla de FOSUserBundle */
    public function getParent()
    {
        return 'FOSUserBundle';
    }
}
