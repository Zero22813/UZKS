/// @description Insert description here
// You can write your code in this editor

var cameraX = camera_get_view_x(global.Camera);
var cameraY = camera_get_view_y(global.Camera);

// Делаем переменные стабильными для зума
cameraWidth = camera_get_view_width(global.Camera);
cameraHeight = camera_get_view_height(global.Camera);
var targetX = cameraTarget.x - cameraWidth / 2;
var targetY = cameraTarget.y - cameraHeight / 2;

// Поддерживаем входные значения в диапазоне от 0 до размеров комнаты
targetX = clamp(targetX, 0, room_width - cameraWidth);
targetY = clamp(targetY, 0, room_height - cameraHeight);

// Возвращаем позицию камеры. Делает передвижение плавным
cameraX = lerp(cameraX, targetX, CameraSpeed);
cameraY = lerp(cameraY, targetY, CameraSpeed);

// Автоподгон размера камеры, если вдруг вышли за рамки
if cameraWidth > 1440 or cameraWidth < 320
{
	cameraWidth = global.CameraWidth
	cameraHeight = global.CameraHeight
}

// Зум
var wheel = mouse_wheel_down() - mouse_wheel_up(); // Возвращает true/false (-1 / 0 / 1)
if (wheel != 0)
{
	wheel *= 0.1; // * 10%

	// Определяем, сколько добавить к ширине / высоте
	var addWidth = cameraWidth * wheel;
	var addHeight = cameraHeight * wheel;

	if (cameraWidth + addWidth < 1440) and (cameraWidth + addWidth > 320)
	{
		cameraWidth += addWidth;
		cameraHeight += addHeight;

		// Делаем входные значения стабильными
		var prevWidth = cameraWidth;
		var prevHeight = cameraHeight;
		cameraWidth = clamp(cameraWidth, CameraWidth / 2, room_width);
		cameraHeight = clamp(cameraHeight, CameraHeight / 2, room_height);
		
		// Исправляем искривление при зуме. Если разрешение 16:9 - все ок, иначе - исправляем.
		if (cameraWidth / cameraHeight == 1.777777777777778) &&
		(prevWidth == cameraWidth || prevHeight == cameraHeight) {
			// Фиксим позицию камеры
			cameraX -= addWidth / 2;
			cameraY -= addHeight / 2;
			// Опять делаем значения стабильными
			cameraX = clamp(cameraX, 0, room_width - cameraWidth);
			cameraY = clamp(cameraY, 0, room_height - cameraHeight);
		}
		else {
			cameraWidth = prevWidth - addWidth;
			cameraHeight = prevHeight - addHeight;
		}
	}
}
camera_set_view_pos(global.Camera, cameraX, cameraY);
camera_set_view_size(global.Camera, cameraWidth, cameraHeight);