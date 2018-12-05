<?php
/**
 * Cobalt by MintJoomla
 * a component for Joomla! 1.7 - 2.5 CMS (http://www.joomla.org)
 * Author Website: http://www.mintjoomla.com/
 *
 * @copyright Copyright (C) 2012 MintJoomla (http://www.mintjoomla.com). All rights reserved.
 * @license   GNU/GPL http://www.gnu.org/copyleft/gpl.html
 */
defined('_JEXEC') or die();

jimport('joomla.application.component.view');

/**
 * View class for a list of users.
 *
 * @package        Joomla.Administrator
 * @subpackage     com_users
 * @since          1.6
 */
class CobaltViewCobalt extends JViewLegacy
{
	/**
	 * Display the view
	 */
	public function display($tpl = NULL)
	{
		//$user   = JFactory::getUser();
		// $url = "index.php?option=com_community&view=profile&userid={$user->id}";
		$url_referer = $_SERVER['HTTP_REFERER']; // Получаем ссылку с которой перешли
		$app    = JFactory::getApplication();
		$app->redirect($url_referer); //Выполняем перенаправление на ссылку с которой перешли

		// echo "<PRE>";
		// print_r($user);
		// echo "</PRE>";
		parent::display($tpl);
	}

}
