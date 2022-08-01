/// @description Insert description here
// You can write your code in this editor

// Если в комнате есть игрок - следим за ним, иначе - за комнатой.
if instance_exists(Obj_player) { cameraTarget = Obj_player; }
else { cameraTarget = room; }

// Создаём камеру по нужной нам ширине и высоте.
global.Camera = camera_create_view(0, 0, global.CameraWidth, global.CameraHeight); 

// Включаем и устанавливаем камеру.
view_enabled = true;
view_visible[0] = true;
view_set_camera(0, global.Camera);