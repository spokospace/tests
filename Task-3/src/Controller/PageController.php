<?php
// src/Controller/PageController.php
namespace App\Controller;

use Symfony\Component\HttpFoundation\Response;

use Symfony\Component\Routing\Annotation\Route;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class PageController extends AbstractController
{
    /**
    * @Route("/")
    */

    public function tantis(): Response
    {
        $number = random_int(0, 100);
        
        return $this->render('tantis.html.twig', [
            'number' => $number,
        ]);
    }
}
