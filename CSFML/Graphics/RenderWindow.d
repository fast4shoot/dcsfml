////////////////////////////////////////////////////////////
//
// SFML - Simple and Fast Multimedia Library
// Copyright (C) 2007-2012 Laurent Gomila (laurent.gom@gmail.com)
//
// This software is provided 'as-is', without any express or implied warranty.
// In no event will the authors be held liable for any damages arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it freely,
// subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented;
//    you must not claim that you wrote the original software.
//    If you use this software in a product, an acknowledgment
//    in the product documentation would be appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such,
//    and must not be misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source distribution.
//
////////////////////////////////////////////////////////////

module CSFML.Graphics.RenderWindow;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import CSFML.Config;
import CSFML.Graphics.Color;
import CSFML.Graphics.Rect;
import CSFML.Graphics.Types;
import CSFML.Graphics.PrimitiveType;
import CSFML.Graphics.RenderStates;
import CSFML.Graphics.Vertex;
import CSFML.Window.Event;
import CSFML.Window.VideoMode;
import CSFML.Window.WindowHandle;
import CSFML.Window.Window;
import CSFML.System.Vector2;


////////////////////////////////////////////////////////////
/// \brief Construct a new render window
///
/// \param mode     Video mode to use
/// \param title    Title of the window
/// \param style    Window style
/// \param settings Creation settings (pass NULL to use default values)
///
////////////////////////////////////////////////////////////
sfRenderWindow* sfRenderWindow_create(sfVideoMode mode, const(char)* title, sfUint32 style, const(sfContextSettings)* settings);

////////////////////////////////////////////////////////////
/// \brief Construct a render window from an existing control
///
/// \param handle   Platform-specific handle of the control
/// \param settings Creation settings (pass NULL to use default values)
///
////////////////////////////////////////////////////////////
sfRenderWindow* sfRenderWindow_createFromHandle(sfWindowHandle handle, const(sfContextSettings)* settings);

////////////////////////////////////////////////////////////
/// \brief Destroy an existing render window
///
/// \param renderWindow Render window to destroy
///
////////////////////////////////////////////////////////////
void sfRenderWindow_destroy(sfRenderWindow* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Close a render window (but doesn't destroy the internal data)
///
/// \param renderWindow Render window to close
///
////////////////////////////////////////////////////////////
void sfRenderWindow_close(sfRenderWindow* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Tell whether or not a render window is opened
///
/// \param renderWindow Render window object
///
////////////////////////////////////////////////////////////
sfBool sfRenderWindow_isOpen(const(sfRenderWindow)* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Get the creation settings of a render window
///
/// \param renderWindow Render window object
///
/// \return Settings used to create the window
///
////////////////////////////////////////////////////////////
sfContextSettings sfRenderWindow_getSettings(const(sfRenderWindow)* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Get the event on top of events stack of a render window, if any, and pop it
///
/// \param renderWindow Render window object
/// \param event        Event to fill, if any
///
/// \return sfTrue if an event was returned, sfFalse if events stack was empty
///
////////////////////////////////////////////////////////////
sfBool sfRenderWindow_pollEvent(sfRenderWindow* renderWindow, sfEvent* event);

////////////////////////////////////////////////////////////
/// \brief Wait for an event and return it
///
/// \param renderWindow Render window object
/// \param event        Event to fill
///
/// \return sfFalse if an error occured
///
////////////////////////////////////////////////////////////
sfBool sfRenderWindow_waitEvent(sfRenderWindow* renderWindow, sfEvent* event);

////////////////////////////////////////////////////////////
/// \brief Get the position of a render window
///
/// \param renderWindow Render window object
///
/// \return Position in pixels
///
////////////////////////////////////////////////////////////
sfVector2i sfRenderWindow_getPosition(const(sfRenderWindow)* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Change the position of a render window on screen
///
/// Only works for top-level windows
///
/// \param renderWindow Render window object
/// \param position     New position, in pixels
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setPosition(sfRenderWindow* renderWindow, sfVector2i position);

////////////////////////////////////////////////////////////
/// \brief Get the size of the rendering region of a render window
///
/// \param renderWindow Render window object
///
/// \return Size in pixels
///
////////////////////////////////////////////////////////////
sfVector2u sfRenderWindow_getSize(const(sfRenderWindow)* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Change the size of the rendering region of a render window
///
/// \param renderWindow Render window object
/// \param size         New size, in pixels
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setSize(sfRenderWindow* renderWindow, sfVector2u size);

////////////////////////////////////////////////////////////
/// \brief Change the title of a render window
///
/// \param renderWindow Render window object
/// \param title        New title
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setTitle(sfRenderWindow* renderWindow, const(char)* title);

////////////////////////////////////////////////////////////
/// \brief Change a render window's icon
///
/// \param renderWindow Renderw indow object
/// \param width        Icon's width, in pixels
/// \param height       Icon's height, in pixels
/// \param pixels       Pointer to the pixels in memory, format must be RGBA 32 bits
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setIcon(sfRenderWindow* renderWindow, uint width, uint height, const(sfUint8)* pixels);

////////////////////////////////////////////////////////////
/// \brief Show or hide a render window
///
/// \param renderWindow Render window object
/// \param visible      sfTrue to show the window, sfFalse to hide it
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setVisible(sfRenderWindow* renderWindow, sfBool visible);

////////////////////////////////////////////////////////////
/// \brief Show or hide the mouse cursor on a render window
///
/// \param renderWindow Render window object
/// \param show         sfTrue to show, sfFalse to hide
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setMouseCursorVisible(sfRenderWindow* renderWindow, sfBool show);

////////////////////////////////////////////////////////////
/// \brief Enable / disable vertical synchronization on a render window
///
/// \param renderWindow Render window object
/// \param enabled      sfTrue to enable v-sync, sfFalse to deactivate
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setVerticalSyncEnabled(sfRenderWindow* renderWindow, sfBool enabled);

////////////////////////////////////////////////////////////
/// \brief Enable or disable automatic key-repeat for keydown events
///
/// Automatic key-repeat is enabled by default
///
/// \param renderWindow Render window object
/// \param enabled      sfTrue to enable, sfFalse to disable
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setKeyRepeatEnabled(sfRenderWindow* renderWindow, sfBool enabled);

////////////////////////////////////////////////////////////
/// \brief Activate or deactivate a render window as the current target for rendering
///
/// \param renderWindow Render window object
/// \param active       sfTrue to activate, sfFalse to deactivate
///
/// \return True if operation was successful, false otherwise
///
////////////////////////////////////////////////////////////
sfBool sfRenderWindow_setActive(sfRenderWindow* renderWindow, sfBool active);

////////////////////////////////////////////////////////////
/// \brief Display a render window on screen
///
/// \param renderWindow Render window object
///
////////////////////////////////////////////////////////////
void sfRenderWindow_display(sfRenderWindow* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Limit the framerate to a maximum fixed frequency for a render window
///
/// \param renderWindow Render window object
/// \param limit        Framerate limit, in frames per seconds (use 0 to disable limit)
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setFramerateLimit(sfRenderWindow* renderWindow, uint limit);

////////////////////////////////////////////////////////////
/// \brief Change the joystick threshold, ie. the value below which no move event will be generated
///
/// \param renderWindow Render window object
/// \param threshold    New threshold, in range [0, 100]
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setJoystickThreshold(sfRenderWindow* renderWindow, float threshold);

////////////////////////////////////////////////////////////
/// \brief Retrieve the OS-specific handle of a render window
///
/// \param renderWindow Render window object
///
/// \return Window handle
///
////////////////////////////////////////////////////////////
sfWindowHandle sfRenderWindow_getSystemHandle(const(sfRenderWindow)* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Clear a render window with the given color
///
/// \param renderWindow Render window object
/// \param color        Fill color
///
////////////////////////////////////////////////////////////
void sfRenderWindow_clear(sfRenderWindow* renderWindow, sfColor color);

////////////////////////////////////////////////////////////
/// \brief Change the current active view of a render window
///
/// \param renderWindow Render window object
/// \param view         Pointer to the new view
///
////////////////////////////////////////////////////////////
void sfRenderWindow_setView(sfRenderWindow* renderWindow, const(sfView)* view);

////////////////////////////////////////////////////////////
/// \brief Get the current active view of a render window
///
/// \param renderWindow Render window object
///
/// \return Current active view
///
////////////////////////////////////////////////////////////
const(sfView)* sfRenderWindow_getView(const(sfRenderWindow)* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Get the default view of a render window
///
/// \param renderWindow Render window object
///
/// \return Default view of the render window
///
////////////////////////////////////////////////////////////
const(sfView)* sfRenderWindow_getDefaultView(const(sfRenderWindow)* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Get the viewport of a view applied to this target
///
/// \param renderWindow Render window object
/// \param view         Target view
///
/// \return Viewport rectangle, expressed in pixels in the current target
///
////////////////////////////////////////////////////////////
sfIntRect sfRenderWindow_getViewport(const(sfRenderWindow)* renderWindow, const(sfView)* view);

////////////////////////////////////////////////////////////
/// \brief Convert a point in window coordinates into view coordinates
///
/// \param renderWindow Render window object
/// \param point        Point to convert, relative to the window
/// \param targetView   Target view to convert the point to (pass NULL to use the current view)
///
/// \return The converted point, in "world" units
///
////////////////////////////////////////////////////////////
sfVector2f sfRenderWindow_convertCoords(const(sfRenderWindow)* renderWindow, sfVector2i point, const(sfView)* targetView);

////////////////////////////////////////////////////////////
/// \brief Draw a drawable object to the render-target
///
/// \param renderWindow render window object
/// \param object       Object to draw
/// \param states       Render states to use for drawing (NULL to use the default states)
///
////////////////////////////////////////////////////////////
void sfRenderWindow_drawSprite(sfRenderWindow* renderWindow, const(sfSprite)* object, const(sfRenderStates)* states);
void sfRenderWindow_drawText(sfRenderWindow* renderWindow, const(sfText)* object, const(sfRenderStates)* states);
void sfRenderWindow_drawShape(sfRenderWindow* renderWindow, const(sfShape)* object, const(sfRenderStates)* states);
void sfRenderWindow_drawCircleShape(sfRenderWindow* renderWindow, const(sfCircleShape)* object, const(sfRenderStates)* states);
void sfRenderWindow_drawConvexShape(sfRenderWindow* renderWindow, const(sfConvexShape)* object, const(sfRenderStates)* states);
void sfRenderWindow_drawRectangleShape(sfRenderWindow* renderWindow, const(sfRectangleShape)* object, const(sfRenderStates)* states);
void sfRenderWindow_drawVertexArray(sfRenderWindow* renderWindow, const(sfVertexArray)* object, const(sfRenderStates)* states);

////////////////////////////////////////////////////////////
/// \brief Draw primitives defined by an array of vertices to a render window
///
/// \param renderWindow render window object
/// \param vertices     Pointer to the vertices
/// \param vertexCount  Number of vertices in the array
/// \param type         Type of primitives to draw
/// \param states       Render states to use for drawing (NULL to use the default states)
///
////////////////////////////////////////////////////////////
void sfRenderWindow_drawPrimitives(sfRenderWindow* renderWindow,
                                                      const(sfVertex)* vertices, uint vertexCount,
                                                      sfPrimitiveType type, const(sfRenderStates)* states);

////////////////////////////////////////////////////////////
/// \brief Save the current OpenGL render states and matrices
///
/// This function can be used when you mix SFML drawing
/// and direct OpenGL rendering. Combined with popGLStates,
/// it ensures that:
/// \li SFML's internal states are not messed up by your OpenGL code
/// \li your OpenGL states are not modified by a call to a SFML function
///
/// Note that this function is quite expensive: it saves all the
/// possible OpenGL states and matrices, even the ones you
/// don't care about. Therefore it should be used wisely.
/// It is provided for convenience, but the best results will
/// be achieved if you handle OpenGL states yourself (because
/// you know which states have really changed, and need to be
/// saved and restored). Take a look at the resetGLStates
/// function if you do so.
///
/// \param renderWindow render window object
///
////////////////////////////////////////////////////////////
void sfRenderWindow_pushGLStates(sfRenderWindow* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Restore the previously saved OpenGL render states and matrices
///
/// See the description of pushGLStates to get a detailed
/// description of these functions.
///
/// \param renderWindow render window object
///
////////////////////////////////////////////////////////////
void sfRenderWindow_popGLStates(sfRenderWindow* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Reset the internal OpenGL states so that the target is ready for drawing
///
/// This function can be used when you mix SFML drawing
/// and direct OpenGL rendering, if you choose not to use
/// pushGLStates/popGLStates. It makes sure that all OpenGL
/// states needed by SFML are set, so that subsequent sfRenderWindow_draw*()
/// calls will work as expected.
///
/// \param renderWindow render window object
///
////////////////////////////////////////////////////////////
void sfRenderWindow_resetGLStates(sfRenderWindow* renderWindow);

////////////////////////////////////////////////////////////
/// \brief Copy the current contents of a render window to an image
///
/// This is a slow operation, whose main purpose is to make
/// screenshots of the application. If you want to update an
/// image with the contents of the window and then use it for
/// drawing, you should rather use a sfTexture and its
/// update(sfWindow*) function.
/// You can also draw things directly to a texture with the
/// sfRenderWindow class.
///
/// \param renderWindow Render window object
///
/// \return New image containing the captured contents
///
////////////////////////////////////////////////////////////
sfImage* sfRenderWindow_capture(const(sfRenderWindow)* renderWindow);


