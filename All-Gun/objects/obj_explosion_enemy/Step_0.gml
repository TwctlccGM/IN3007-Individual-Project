/// @description

// Increment timer every frame. 
// When timer reaches half a second (30 frames), explosion disappears.
life_timer++;
if (life_timer >= 30) { instance_destroy(); }






