<?php
defined('_JEXEC') or die('Restricted access');
?>

<style>
	.dl-horizontal dd {
		margin-bottom: 10px;
	}

.line-brk {
	margin-left: 0px !important;
}
</style>

<?php

$i = $n = 0;
$params = $this->tmpl_params['list'];

foreach ($this->items as $item)
{
	?>
	
	<article class="has-context<?php if($item->featured) {echo ' featured';}?>">
				<div class="pull-right controls">
					<div class="btn-group" style="display: none;">
						<?php echo HTMLFormatHelper::bookmark($item, $this->submission_types[$item->type_id], $params);?>
						<?php echo HTMLFormatHelper::follow($item, $this->section);?>
						<?php echo HTMLFormatHelper::repost($item, $this->section);?>
						<?php echo HTMLFormatHelper::compare($item, $this->submission_types[$item->type_id], $this->section);?>
						<?php if($item->controls):?>
							<a href="#" data-toggle="dropdown" class="dropdown-toggle btn btn-mini">
								<?php echo HTMLFormatHelper::icon('gear.png');  ?>
							</a>
							<ul class="dropdown-menu">
								<?php echo list_controls($item->controls);?>
							</ul>
						<?php endif;?>
					</div>
				</div>
		<h2>
					<?php if($params->get('tmpl_core.item_title')):?>
						<?php if(in_array($params->get('tmpl_core.item_link'), $this->user->getAuthorisedViewLevels())):?>
							<a <?php echo $item->nofollow ? 'rel="nofollow"' : '';?> href="<?php echo JRoute::_($item->url);?>">
								<?php echo $item->title?>
							</a>
						<?php else :?>
							<?php echo $item->title?>
						<?php endif;?>
					<?php endif;?>
					<?php echo CEventsHelper::showNum('record', $item->id);?>
		</h2>

	<?php

	//Вывод полей без группы
	if(isset($item->fields_by_groups[null]))
	{
			echo "<dl class='dl-horizontal fields-list'>";
			foreach ($item->fields_by_groups[null] as $field_id => $field)
			{
				echo "<dt id='dt-".$field_id."' class=".$field->class.">";
					if($field->params->get('core.show_lable') > 1)
					{
							echo "<label id='".$field->id."-lbl' >";
							echo $field->label;
							if($field->params->get('core.icon'))
							{
								echo HTMLFormatHelper::icon($field->params->get('core.icon'));
							}
							echo "</label>";
					}
						
			echo "</dt>";
			echo "<dd id='dd-".$field_id."' class='".$field->fieldclass.($field->params->get('core.label_break') > 1 ? ' line-brk' : NULL)."'>";
			echo $field->result;
			echo "</dd>";
			}
			echo "</dl>";
	}	
	unset($item->fields_by_groups[null]);

	echo "<div class='clearfix'></div>";

	//Вывод табов
	echo "<div class='tabbable'>";
	echo "<ul class='nav nav-tabs' id='tabs-list'>";
				if(isset($item->fields_by_groups))
				{
					$start = true;
						foreach ($item->fields_by_groups as $group_id => $fields)
						{
							if($start)
							{
								echo "<li class='active'>";
								$start = false;
							}
							else
							{
								echo "<li>";
							}
							
							echo "<a href='#tab-".$n++."' data-toggle='tab'>";
								if(!empty($item->field_groups[$group_id]['icon']))
								{
									echo HTMLFormatHelper::icon($item->field_groups[$group_id]['icon']);
								}

								echo JText::_($group_id);
							echo "</a>";
						echo "</li>";
						}
				}
					
	echo "</ul>";

	//Вывод полей в табы
	if(isset($item->fields_by_groups))
	{
		echo '<div class="tab-content" id="tabs-box">';
		$start = true;
		foreach ($item->fields_by_groups as $group_name => $fields)
		{
			if($start)
			{
				echo '<div class="tab-pane active" id="tab-'.$i.'">';
				$start = false;
			}
			else
			{
				echo '<div class="tab-pane" id="tab-'.$i.'">';
			}
			
			echo '<dl class="dl-horizontal fields-list fields-group'.$i.'">';
				foreach ($fields as $field_id => $field)
				{
					// print_r($field->params);
					// exit();
						echo '<dt id="dt-'.$field_id.'" class="'.$field->class.'">';
						if($field->params->get('core.show_lable') > 1)
						{
								echo '<label id="'.$field->id.'-lbl">';
								echo $field->label;
								if($field->params->get('core.icon'))
								{
									echo HTMLFormatHelper::icon($field->params->get('core.icon'));
								}
							echo '</label>';
						}
					echo "</dt>";
					echo '<dd id="dd-'.$field_id.'" class="'.$field->fieldclass.($field->params->get('core.label_break') > 1 ? ' line-brk' : NULL).'">';
						echo $field->result;
					echo '</dd>';
				}
			echo "</dl>";
			echo '</div>';
			$i++;
			
		}
		echo '</div>';
	}

	echo "</div>"; // end class='tabbable'

	// Вывод мета инфы

	$category = array();
	$author = array();
	$details = array();

	if($params->get('tmpl_core.item_categories') && $item->categories_links)
				{
					$category[] = sprintf('%s: %s', (count($item->categories_links) > 1 ? JText::_('CCATEGORIES') : JText::_('CCATEGORY')), implode(', ', $item->categories_links));
				}
				if($params->get('tmpl_core.item_user_categories') && $item->ucatid)
				{
					$category[] = sprintf('%s: %s', JText::_('CUSERCAT'), $item->ucatname_link);
				}
				if($params->get('tmpl_core.item_author') && $item->user_id)
				{
					$author[] = JText::sprintf('CWRITTENBY', CCommunityHelper::getName($item->user_id, $this->section));
				}
				if($params->get('tmpl_core.item_author_filter'))
				{
					$author[] = FilterHelper::filterButton('filter_user', $item->user_id, NULL, JText::sprintf('CSHOWALLUSERREC', CCommunityHelper::getName($item->user_id, $this->section, array('nohtml' => 1))), $this->section);
				}
				if($params->get('tmpl_core.item_ctime'))
				{
					$author[] = JText::sprintf('CONDATE', JHtml::_('date', $item->created, $params->get('tmpl_core.item_time_format')));
				}

				if($params->get('tmpl_core.item_mtime'))
				{
					$author[] = sprintf('%s: %s', JText::_('CCHANGEON'), JHtml::_('date', $item->modify, $params->get('tmpl_core.item_time_format')));
				}

				if($params->get('tmpl_core.item_extime'))
				{
					$author[] = sprintf('%s: %s', JText::_('CEXPIREON'), $item->expire ? JHtml::_('date', $item->expire, $params->get('tmpl_core.item_time_format')) : JText::_('CNEVER'));
				}

				if($params->get('tmpl_core.item_type'))
				{
					$details[] = sprintf('%s: %s %s', JText::_('CTYPE'), $item->type_name, ($params->get('tmpl_core.item_type_filter') ? FilterHelper::filterButton('filter_type', $item->type_id, NULL, JText::sprintf('CSHOWALLTYPEREC', $item->type_name), $this->section) : NULL));
				}
				if($params->get('tmpl_core.item_hits'))
				{
					$details[] = sprintf('%s: %s', JText::_('CHITS'), $item->hits);
				}
				if($params->get('tmpl_core.item_comments_num'))
				{
					$details[] = sprintf('%s: %s', JText::_('CCOMMENTS'), CommentHelper::numComments($this->submission_types[$item->type_id], $item));
				}
				if($params->get('tmpl_core.item_vote_num'))
				{
					$details[] = sprintf('%s: %s', JText::_('CVOTES'), $item->votes);
				}
				if($params->get('tmpl_core.item_favorite_num'))
				{
					$details[] = sprintf('%s: %s', JText::_('CFAVORITED'), $item->favorite_num);
				}
				if($params->get('tmpl_core.item_follow_num'))
				{
					$details[] = sprintf('%s: %s', JText::_('CFOLLOWERS'), $item->subscriptions_num);
				}
				?>

				<?php if($params->get('tmpl_core.item_readon')): ?>
					<p>
						<a class="btn btn-primary" href="<?php echo JRoute::_($item->url);?>"><?php echo JText::_('CREADMORE'); ?></a>
					</p>
				<?php endif;?>

				<?php if($category || $author || $details): ?>
					<div class="clearfix"></div>

					<div class="well well-small">
						<?php if($params->get('tmpl_core.item_author_avatar')):?>
							<div class="pull-right">
								<img class="img-polaroid" src="<?php echo CCommunityHelper::getAvatar($item->user_id, $params->get('tmpl_core.item_author_avatar_width', 40), $params->get('tmpl_core.item_author_avatar_height', 40));?>" />
							</div>
						<?php endif;?>
						<small>
							<dl>
								<?php if($category):?>
									<dt><?php echo JText::_('CCATEGORY');?></dt>
									<dd><?php echo implode(' ', $category);?></dd>
								<?php endif;?>
								<?php if($author):?>
									<dt><?php echo JText::_('Posted');?></dt>
									<dd>
										<?php echo implode(', ', $author);?>
									</dd>
								<?php endif;?>
								<?php if($details):?>
									<dt>Info</dt>
									<dd class="hits">
										<?php echo implode(', ', $details);?>
									</dd>
								<?php endif;?>
							</dl>
						</small>
					</div>
				<?php endif;?>
				<?php
	echo '</article>';
}
?>

