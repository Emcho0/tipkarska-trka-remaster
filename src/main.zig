const rl = @cImport({
    @cInclude("raylib.h");
});

pub fn main() !void {
    const WIDTH = 800;
    const HEIGHT = 600;
    rl.InitWindow(WIDTH, HEIGHT, "Tipkarska trka");
    defer rl.CloseWindow();

    while (!rl.WindowShouldClose()) {
        rl.BeginDrawing();
        rl.ClearBackground(rl.ColorFromHSV(227.14, 0.7, 0.0784));
        rl.DrawText("Tipkarska trka", 60, 100, 50, rl.ColorFromHSV(231.43, 0.069, 0.7961));
        defer rl.EndDrawing();
    }
}
