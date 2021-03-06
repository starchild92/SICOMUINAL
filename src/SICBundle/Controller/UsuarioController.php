<?php

namespace SICBundle\Controller;

use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

use SICBundle\Entity\Usuario;
use SICBundle\Entity\Bitacora;
use SICBundle\Form\UsuarioType;

/**
 * Usuario controller.
 *
 */
class UsuarioController extends Controller
{
    /**
     * Lists all Usuario entities.
     *
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $usuarios = $em->getRepository('SICBundle:Usuario')->findAll();

        return $this->render('usuario/index.html.twig', array(
            'usuarios' => $usuarios,
        ));
    }

    /**
     * Creates a new Usuario entity.
     *
     */
    public function newAction(Request $request)
    {
        $usuario = new Usuario();
        $form = $this->createForm('SICBundle\Form\UsuarioType', $usuario);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($usuario);
            $em->flush();

            return $this->redirectToRoute('usuarios_show', array('id' => $usuario->getId()));
        }

        return $this->render('usuario/new.html.twig', array(
            'usuario' => $usuario,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a Usuario entity.
     *
     */
    public function showAction(Usuario $usuario)
    {
        $deleteForm = $this->createDeleteForm($usuario);

        return $this->render('usuario/show.html.twig', array(
            'usuario' => $usuario,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing Usuario entity.
     *
     */
    public function editAction(Request $request, Usuario $usuario)
    {
        $deleteForm = $this->createDeleteForm($usuario);
        $editForm = $this->createForm('SICBundle\Form\UsuarioType', $usuario);

        $you = $this->getUser();
        $roles = $you->getRoles();        
        if (!in_array("ROLE_ADMIN", $roles))
        {
            // no soy admin
            $editForm->remove('enabled');
            $editForm->remove('roles');

            if($you->getId() != $usuario->getId())
            {
                // intento editar datos de otro usuario
                $this->get('session')->getFlashBag()
                ->add('warning', 'Operacion no permitida.');
                return $this->redirectToRoute('usuarios_index');
                $editForm->remove('plainPassword');
            }
        }

        if($you->getId() != $usuario->getId())
        {
            $editForm->remove('plainPassword');
        }
        
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($usuario);
            $em->flush();

            $this->get('session')->getFlashBag()
            ->add('success', 'Se han almacena los datos del usuario correctamente');

            return $this->redirectToRoute('usuarios_index');
        }

        return $this->render('usuario/edit.html.twig', array(
            'usuario' => $usuario,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a Usuario entity.
     *
     */
    public function deleteAction(Request $request, Usuario $usuario)
    {
        $form = $this->createDeleteForm($usuario);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            // $em->remove($usuario);
            // $em->flush();

            // El usuario no es removido en su lugar es colocado como inactivo para mantener sus planillas e información dentro del sistema
            $usuario->setEnabled(false);
            $bitacora = new Bitacora($this->getUser(),'modificó', 'al usuario del sistema '.$usuario->nombreyapellido().' dehabilitando su acceso al sistema, los datos serán conservados.');
            $em->persist($bitacora);
            $em->persist($usuario);
            $em->flush();

            $this->get('session')->getFlashBag()->add('success', 'Se colocó al usuario ('.$usuario->getUsername().') como inactivo en el sistema.' );
        }

        return $this->redirectToRoute('usuarios_index');
    }

    /**
     * Creates a form to delete a Usuario entity.
     *
     * @param Usuario $usuario The Usuario entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Usuario $usuario)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('usuarios_delete', array('id' => $usuario->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
