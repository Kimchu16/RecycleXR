# RecycleXR

Name: Kimberly Libranza

Student Number: C22386221

Class Group:

Github: https://github.com/Kimchu16/RecycleXR

# Video
[![Youtube](https://img.youtube.com/vi/mgsC-Wzk3-c/maxresdefault.jpg)](https://youtube.com/shorts/mgsC-Wzk3-c)

# Screenshots
![1000001859](https://github.com/user-attachments/assets/d391f566-a16a-437c-829c-b27507ac5c55)
![1000001857](https://github.com/user-attachments/assets/d6c46190-e8b6-4238-9073-30ec379611ba)
![1000001856](https://github.com/user-attachments/assets/0f5324f1-939d-4317-a977-828821c93c8c)
![1000001854](https://github.com/user-attachments/assets/8c765f87-1dbc-4769-bf28-57f630b90a95)
![1000001860](https://github.com/user-attachments/assets/328fce35-aa9d-4541-ac46-9751d3e41910)


# Description of the project
RecycleXR is a Mixed Reality educational experience designed for the Meta Quest 3 that teaches basic correct waste sorting through direct interaction. Users pick up common recyclable items using hand tracking, inspect their recycling labels, and place them into the correct bin. Immediate feedback is provided through spatial audio, particle effects, and a live scoreboard that tracks correct and incorrect sorting.

The project focuses on one core interaction (grabbing and placing objects) within a main scene along with other interactions such as lever flipping and button pressing, aligning with Sustainable Development Goal 12: Responsible Consumption and Production. The experience prioritizes clarity, physical intuition, and learning through action rather than complex UI or excessive features.

# Instructions for use 
1. Launch the application on the Meta Quest 3
2. Use hand tracking (no controllers required)
3. Pick up a trash item from the table by making a fist hand shape when a highlight ring appears
4. Inspect the recycling label displayed on the object
5. Place the item into the appropriate bin by releasing the fist shape
6. Observe feedback via sound, particles, and scoreboard
7. Use the lever panel to display recycling information, down to activate, up to deactivate
8. Press the reset button to clear the score

# How it works:
- Trash items are spawned at fixed points on a table
- Each item has a material type (Plastic, Paper, Glass, Cardboard)
- When grabbed, the recycling label icon becomes visible
- Bin detection areas check the material type on entry
- Correct and incorrect sorts trigger signals
- A ScoreboardManager tracks total, correct, and incorrect sorts
- Spatial audio and particle effects reinforce feedback
- Lever interactions control an information billboard
- Main logic is handled within one main XR scene

# List of classes/assets in the project
| Class/asset | Source |
|-----------|-----------|
| trash.gd | Self written |
| trash_spawner.gd | Self written |
| ScoreboardManager.gd | Self written |
| lever.gd | Self written |
| billboard.gd | Self written |
| hand tracking | OpenXR Vendors Plugin |
| hand pose detection | GodotXRHandPoseDetector |
| XRToolsPickable |Godot XR Tools |
| XRToolsInteractableHinge | Godot XR Tools |
| XRToolsInteractableAreaButton | Godot XR Tools |
| StartXR | Godot XR Tools |
| Recycling label icons | From [RecycleNow](https://www.recyclenow.com/how-to-recycle/recycling-symbols) |
| Table/bin/trash/billboard models | From [Sketchfab](https://skfb.ly/otYAx) [Sketchfab](https://skfb.ly/6UtGB) [Sketchfab](https://skfb.ly/owHCU)  |
| Lever/Button models | Modified from [GodotXRToolsDemos](https://github.com/GodotVR/godot-xr-tools/tree/aecfc894d9581cf4ca6df7fdd09098040497aa8e/scenes/interactables_demo) |
| Textures | From [Boards](https://polyhaven.com/a/weathered_brown_planks) [lever](https://polyhaven.com/a/blue_metal_plate) [Ground](https://polyhaven.com/a/asphalt_02) |
| Sounds | From [Button](https://pixabay.com/sound-effects/ui-button-heavy-button-press-metallic-333826/) [Lever](https://pixabay.com/sound-effects/large-lever-pushed-amp-pulled-moving-the-lever-386435/) [Spawn](https://pixabay.com/sound-effects/smoke-bomb-6761/) [Error](https://pixabay.com/sound-effects/error-08-206492/) [Correct](https://pixabay.com/sound-effects/correct-choice-43861/) |

# References
* https://godotvr.github.io/godot-xr-tools/docs/pickup/
* https://godotvr.github.io/godot_openxr_vendors/manual/meta/hand_tracking.html#hand-mesh
* https://docs.godotengine.org/en/stable/classes/class_xrcontroller3d.html
* https://www.youtube.com/watch?v=sjHJB2PrSkc
* https://www.youtube.com/watch?v=QhntE6vOLXY
* https://www.youtube.com/watch?v=DkJ2jYl-ESw
* https://www.recyclenow.com/how-to-recycle/recycling-symbols#The-on-pack-recycling-label-(or-OPRL)

# What I am most proud of in the assignment
I am most proud of successfully implementing hand-tracking-only interaction in an intuitive way. The grab, inspect, and sort workflow feels pretty natural and needed a strong understanding of XR interaction patterns and signal-based architecture from XRTools and Vendors plugins. Achieving a clean, functional experience without overcomplicating the system was a major accomplishment.

# What I learned
Through this project, I learned how to design XR experiences around physical interaction rather than traditional UI, how to work effectively with Godot XR Tools, and how to manage complex interactions using signals and modular scripts. I also gained practical experience in debugging XR-specific issues, working with hand tracking, and prioritizing polish over feature quantity. As well as the fact Godot XR Tools does not have built in support for non-controller hand tracking.

# Proposal submitted earlier:

RecycleXR is an interactive XR application created to educate users about recycling by focusing on picking up and sorting recyclables into the correct bin. Users will pick up a virtual recyclable object, read its label to understand what it is made of, and then place it in the correct bin. The focus will be on making the interaction of picking up and sorting items smooth and intuitive. This will take place in a single scene, with the user's environment as the backdrop.
This project addresses SDG 12 (Responsible Consumption and Production) by teaching users how to properly recycle and raising awareness about the environmental impact of waste.
This is a standalone project, aiming to create an engaging recycling experience using Godot XR technologies.

### Key Features
- **Core Interaction**: Users will focus on picking up and releasing recyclables using hand tracking.
- **Simple Recycling Task**: The project will focus on sorting recyclables such as plastic, paper, and glass.
- **Educational Content**: When an item is sorted correctly, users will hear an audio cue or see a message explaining why it's important to recycle that material.
- **Polished Experience**: The interaction of grabbing and sorting recyclables will feel fluid and natural with smooth animations, simple lighting, and clear labels.

### XR Tech
- **Hand Tracking**: Users will pick up objects and place them in the bins using natural hand gestures.
- **Passthrough**: Virtual bins and items will be overlaid in the real-world environment
- **Spatial Audio**: Provide audio feedback when an item is correctly placed in a bin.

  <img width="1668" height="2157" alt="image" src="https://github.com/user-attachments/assets/7c9fe656-7b1b-4216-8202-b7bcf2aef85c" />
  <img width="1668" height="2157" alt="image" src="https://github.com/user-attachments/assets/5b06ea70-fa1c-4e05-b3f3-fa9f2e910a20" />

