<?php
defined('_JEXEC') or die('Restricted access');
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
			echo "<dd id='dd-".$field_id."' class=".$field->fieldclass.">";
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
			// group_start($this, $group_name, 'tab-'.$i++);
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
	echo '</article>';
}
?>

