<?php
defined('_JEXEC') or die('Restricted access');
$i = $o = 0;

foreach ($this->items as $item)
{
	
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

	echo "<ul class='nav nav-tabs' id='tabs-list'>";
				if(isset($item->fields_by_groups))
				{
						foreach ($item->fields_by_groups as $group_id => $fields)
						{
							echo "<li>";
							echo "<a href='#tab-".$o++."' data-toggle='tab'>";
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

	if(isset($item->fields_by_groups))
	{
		foreach ($item->fields_by_groups as $group_name => $fields)
		{
			$started = true;
			group_start($this, $group_name, 'tab-'.$i++);
			echo '<dl class="dl-horizontal fields-list fields-group'.$i.'">';
				foreach ($fields as $field_id => $field)
				{
					print_r($field->params);
					exit();
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
			group_end($this);
		}
	}
}

// echo "<PRE>";
// print_r($this->items[0]->title);
// echo "</PRE>";
?>

<?php
function group_start($data, $label, $name)
{
	static $start = false;
	$icon = '';
	if(!empty($data->item->field_groups[$label]['icon']) && $data->tmpl_params['record']->get('tmpl_params.show_groupicon', 1)) {
		$icon = HTMLFormatHelper::icon($data->item->field_groups[$label]['icon']);
	}
	switch ($data->tmpl_params['record']->get('tmpl_params.item_grouping_type', 0))
	{
		//tab
		case 1:
			if(!$start)
			{
				echo '<div class="tab-content" id="tabs-box">';
				$start = TRUE;
			}
			echo '<div class="tab-pane" id="'.$name.'">';
			break;
		//slider
		case 2:
			if(!$start)
			{
				echo '<div class="accordion" id="accordion2">';
				$start = TRUE;
			}
			echo '<div class="accordion-group">
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#'.$name.'">
					     '.$icon. ' '. $label.'
					</a>
				</div>
				<div id="'.$name.'" class="accordion-body collapse">
					<div class="accordion-inner">';
			break;
		// fieldset
		case 3:
			echo "<legend>{$icon} {$label}</legend>";
		break;
	}

	if($data->tmpl_params['record']->get('tmpl_params.show_groupdescr') && !empty($data->item->field_groups[$label]['descr']))
	{
		echo $data->item->field_groups[$label]['descr'];
	}
}

function group_end($data)
{
	switch ($data->tmpl_params['record']->get('tmpl_params.item_grouping_type', 0))
	{
		case 1:
			echo '</div>';
		break;
		case 2:
			echo '</div></div></div>';
		break;
	}
}

function total_end($data)
{
	switch ($data->tmpl_params['record']->get('tmpl_params.item_grouping_type', 0))
	{
		//tab
		case 1:
			echo '</div>';
		break;
		case 2:
			echo '</div>';
		break;
	}
}