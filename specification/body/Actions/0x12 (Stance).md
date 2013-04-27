# Stance

Description  

## Definition

```ruby
def Stance
	int8 :command 
	int8 :player_id
	int8 :player_number
	int8 :unknown
end
```

## Description

*:command*  
The command identifier for the action attack will always be `0x12`.

*:selected_units_count*  

*:stance*  
The military stance of the selected units. 
> `0x00`=> aggressive  
> `0x01`=> defensive  
> `0x02`=> stand ground  
> `0x03`=> passive.  

*:unit_ids*  
The identifier of the selected units.

## Examples

Standard

>`12` &mdash; command  
>`02` &mdash; selected_units_count  
>`01` &mdash; stance
>`06 00 00 00` &mdash; unit_id
>`08 00 00 00` &mdash; unit_id