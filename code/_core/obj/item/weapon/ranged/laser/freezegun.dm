/obj/item/weapon/ranged/energy/freezegun
	name = "freeze ray"
	desc = "Get iced, dummy."
	desc_extended = "A gun that shoots beams that freeze the opponent."
	icon = 'icons/obj/item/weapons/ranged/laser/freezegun.dmi'

	projectile = /obj/projectile/bullet/laser/strong
	ranged_damage_type = /damagetype/ranged/laser/freezegun

	projectile_speed = 8
	shoot_delay = 7

	automatic = FALSE

	bullet_color = "#00FFFF"

	charge_current = CELL_SIZE_ADVANCED
	charge_max = CELL_SIZE_ADVANCED
	charge_cost = CELL_SIZE_ADVANCED / 20

	view_punch = 15

	shoot_sounds = list('sound/weapons/chronogun/fire.ogg')

	override_icon_state = TRUE

	heat_per_shot = 0.1
	heat_max = 0.2

	size = SIZE_4
	weight = WEIGHT_4

	value = 1500

/obj/item/weapon/ranged/energy/freezegun/get_static_spread() //Base spread
	return 0.003

/obj/item/weapon/ranged/energy/freezegun/get_skill_spread(var/mob/living/L) //Base spread
	return max(0,0.03 - (0.06 * L.get_skill_power(SKILL_RANGED)))

/obj/item/weapon/ranged/energy/freezegun/update_icon()

	if(charge_cost > charge_current)
		icon_state = "inventory_0"
	else
		icon_state = "inventory_[FLOOR((charge_current/charge_max) * 4, 1)]"

	return ..()