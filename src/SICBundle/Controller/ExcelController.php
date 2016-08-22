<?php

namespace SICBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use SICBundle\Entity\Bitacora;

use Symfony\Component\HttpFoundation\ResponseHeaderBag;
use PHPExcel_Writer_OOCalc;

class ExcelController extends Controller
{
	public function indexAction()
	{
		$phpExcelObject = $this->get('phpexcel')->createPHPExcelObject();

		$phpExcelObject->getProperties()->setCreator("liuggio")
		   ->setLastModifiedBy("Giulio De Donato")
		   ->setTitle("Office 2005 XLSX Test Document")
		   ->setSubject("Office 2005 XLSX Test Document")
		   ->setDescription("Test document for Office 2005 XLSX, generated using PHP classes.")
		   ->setKeywords("office 2005 openxml php")
		   ->setCategory("Test result file");
		$phpExcelObject->setActiveSheetIndex(0)
		   ->setCellValue('A1', 'I. DATOS PERSONALES DEL JEFE GRUPO FAMILIAR')
		   ->setCellValue('A2', 'Nombres:')
		   ->setCellValue('A3', 'Apellidos:');
		$phpExcelObject->getActiveSheet()->setTitle('Estudio Demográfico y Socioeconomico');
		// Set active sheet index to the first sheet, so Excel opens this as the first sheet
		$phpExcelObject->setActiveSheetIndex(0);

		// create the writer
		$writer = $this->get('phpexcel')->createWriter($phpExcelObject, 'Excel5');
		// $writer = $this->get('phpexcel')->createWriter($phpExcelObject, 'OOCalc');
		// create the response
		$response = $this->get('phpexcel')->createStreamedResponse($writer);
		// adding headers
		$dispositionHeader = $response->headers->makeDisposition(
		    ResponseHeaderBag::DISPOSITION_ATTACHMENT,
		    'stream-file.xls'
		);
		$response->headers->set('Content-Type', 'text/vnd.ms-excel; charset=utf-8');
		$response->headers->set('Pragma', 'public');
		$response->headers->set('Cache-Control', 'maxage=1');
		$response->headers->set('Content-Disposition', $dispositionHeader);

		return $response; 
	}
}