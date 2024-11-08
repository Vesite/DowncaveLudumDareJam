/// @desc

if P exit

time_alive = max(time_alive - 1, 0)
if time_alive == 0
	instance_destroy()
	
if bounce {
	
	//Bounce
	if collision_circle(x + hsp, y, 2, parent_collision, false, true) {
		
		hsp = -hsp*bounce_factor
	}
	
	//Bounce
	if collision_circle(x, y + vsp, 2, parent_collision, false, true) {
		vsp = -vsp*bounce_factor
	}	

}

x += hsp
y += vsp

//Destroy on coll with walls
if collision_point(x, y, parent_collision, true, true) {
	
	instance_destroy()
	
}
