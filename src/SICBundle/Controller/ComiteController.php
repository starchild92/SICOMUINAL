<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Comite;
use SICBundle\Form\ComiteType;

/**
 * Comite controller.
 *
 */
class ComiteController extends Controller
{
    public function ExisteTipoUnidad(Comite $comite)
    {
        $em = $this->getDoctrine()->getManager();

        if ($comite->getTipoUnidad() == "Unidad Ejecutiva") {
            if ($comite->getNombre() != "") {
                $comites = $em->getRepository('SICBundle:Comite')->findBy(array(
                    'tipoUnidad' => "Unidad Ejecutiva", "nombre" => $comite->getNombre()));
                if (sizeof($comites) > 0) {
                    $this->get('session')->getFlashBag()
                    ->add('error', 'Ya hay una "'.$comite->getTipoUnidad().'" de Nombre: "'.$comite->getNombre().'" en el sistema.');
                    return true;
                }
            }else{
                $this->get('session')->getFlashBag()
                    ->add('error', 'Para una nueva "'.$comite->getTipoUnidad().'" debe agregar un nombre.');
                    return true;
            }
        }else{
            $comites = $em->getRepository('SICBundle:Comite')->findAll();
            foreach ($comites as $key) {
                if ($comite->getId() != $key->getId()) {
                    if ($comite->getTipoUnidad() == $key->getTipoUnidad()) {
                        $this->get('session')->getFlashBag()
                        ->add('error', 'Ya hay una "'.$comite->getTipoUnidad().'" de este Tipo conformada.');
                        return true;
                    }
                }
            }
        }

        return false;
    }

    /**
     * Lists all Comite entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $comites = $em->getRepository('SICBundle:Comite')->findAll();

        return $this->render('comite/index.html.twig', array(
            'comites' => $comites,
        ));
    }

    /**
     * Creates a new Comite entity.
     *
     */
    public function newAction(Request $request)
    {
        $comite = new Comite();
        $form = $this->createForm('SICBundle\Form\ComiteType', $comite);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            if (!$this->ExisteTipoUnidad($comite)) {
                $em = $this->getDoctrine()->getManager();

                $voceros = $comite->getVoceros();
                $comite->setCantVoceros(sizeof($voceros));

                $em->persist($comite);
                $em->flush();

                return $this->redirectToRoute('comites_index');
            }
        }

        return $this->render('comite/new.html.twig', array(
            'comite' => $comite,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Comite entity.
     *
     */
    public function showAction(Comite $comite)
    {
        $deleteForm = $this->createDeleteForm($comite);

        return $this->render('comite/show.html.twig', array(
            'comite' => $comite,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Comite entity.
     *
     */
    public function editAction(Request $request, Comite $comite)
    {
        $deleteForm = $this->createDeleteForm($comite);
        $editForm = $this->createForm('SICBundle\Form\ComiteType', $comite);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {

            $em = $this->getDoctrine()->getManager();
            // $comite_db = $em->getRepository('SICBundle:Comite')->findById($comite->getId());

            // print_r($comite_db[0]->getTipoUnidad()); echo "<br>";
            // echo $request->get('comite')->getTipoUnidad(); echo "<br>";
            // print_r($comite->getTipoUnidad()); echo "<br>";           
            // die();

            $voceros = $comite->getVoceros();
            $comite->setCantVoceros(sizeof($voceros));

            $em->persist($comite);
            $em->flush();

            return $this->redirectToRoute('comites_index');
        }

        return $this->render('comite/edit.html.twig', array(
            'comite' => $comite,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Comite entity.
     *
     */
    public function deleteAction(Request $request, Comite $comite)
    {
        $form = $this->createDeleteForm($comite);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($comite);
            $em->flush();
        }

        return $this->redirectToRoute('comites_index');
    }

    /**
     * Creates a form to delete a Comite entity.
     *
     * @param Comite $comite The Comite entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Comite $comite)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('comites_delete', array('id' => $comite->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
