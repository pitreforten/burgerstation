/obj/item/magazine/pistol_40
	name = "\improper .40 pistol magazine"
	desc = "IT'S NOT A CLIP. IT'S A MAGAZINE."
	desc_extended = "Contains ammunition for a ranged weapon. Make sure you're trying to use the right caliber."
	icon = 'icons/obj/item/magazine/40pistol.dmi'
	icon_state = "40"
	bullet_count_max = 14

	weapon_whitelist = list(
		/obj/item/weapon/ranged/bullet/magazine/pistol/military/mod = TRUE
	)

	ammo = /obj/item/bullet_cartridge/pistol_40

	bullet_length_min = 21
	bullet_length_best = 22
	bullet_length_max = 23

	bullet_diameter_min = 9.8
	bullet_diameter_best = 10
	bullet_diameter_max = 11.2

	size = SIZE_2
	weight = WEIGHT_2

/obj/item/magazine/pistol_40/update_icon()
	icon_state = "[initial(icon_state)]_[CEILING(length(stored_bullets)/2,1)]"
	return ..()