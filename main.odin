package main

import "core:fmt"
import "vendor:glfw"

main :: proc() {
	if !glfw.Init() {
		fmt.println("Failed to initialize GLFW");
		return;
	}
	defer glfw.Terminate();

	window := glfw.CreateWindow(1280, 720, "Odin & GLFW", nil, nil);
	if window == nil {
		fmt.println("Failed to create GLFW window");
		return;
	}
	glfw.MakeContextCurrent(window); // Make the window's context current

	for !glfw.WindowShouldClose(window) { // Loop until the user closes the window
		// Render here

		
		glfw.SwapBuffers(window); // Swap front and back buffers

		
		glfw.PollEvents(); // Poll for and process events
	}
}
