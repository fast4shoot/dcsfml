////////////////////////////////////////////////////////////
//
// SFML - Simple and Fast Multimedia Library
// Copyright (C) 2007-2012 Laurent Gomila (laurent.gom@gmail.com)//
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

module dcsfml.Window.Mouse;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import dcsfml.Config;    
import dcsfml.Window.Types;
import dcsfml.System.Vector2;


////////////////////////////////////////////////////////////
/// \brief Mouse buttons
///
////////////////////////////////////////////////////////////
enum sfMouseButton
{
    sfMouseLeft,       ///< The left mouse button
    sfMouseRight,      ///< The right mouse button
    sfMouseMiddle,     ///< The middle (wheel) mouse button
    sfMouseXButton1,   ///< The first extra mouse button
    sfMouseXButton2,   ///< The second extra mouse button

    // sfMouseButtonCount was removed, use sfMouseButton.max instead
}


////////////////////////////////////////////////////////////
/// \brief Check if a mouse button is pressed
///
/// \param button Button to check
///
/// \return sfTrue if the button is pressed, sfFalse otherwise
///
////////////////////////////////////////////////////////////
sfBool sfMouse_isButtonPressed(sfMouseButton button);

////////////////////////////////////////////////////////////
/// \brief Get the current position of the mouse
///
/// This function returns the current position of the mouse
/// cursor relative to the given window, or desktop if NULL is passed.
///
/// \param relativeTo Reference window
///
/// \return Position of the mouse cursor, relative to the given window
///
////////////////////////////////////////////////////////////
sfVector2i sfMouse_getPosition(const(sfWindow)* relativeTo);

////////////////////////////////////////////////////////////
/// \brief Set the current position of the mouse
///
/// This function sets the current position of the mouse
/// cursor relative to the given window, or desktop if NULL is passed.
///
/// \param position   New position of the mouse
/// \param relativeTo Reference window
///
////////////////////////////////////////////////////////////
void sfMouse_setPosition(sfVector2i position, const(sfWindow)* relativeTo);


