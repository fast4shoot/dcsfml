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

module dcsfml.Graphics.Color;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import dcsfml.Config;


////////////////////////////////////////////////////////////
/// \brief Utility class for manpulating RGBA colors
///
////////////////////////////////////////////////////////////
struct sfColor
{
    sfUint8 r;
    sfUint8 g;
    sfUint8 b;
    sfUint8 a;
}

enum : sfColor
{
    sfBlack = sfColor(0,0,0,255),       ///< Black predefined color
    sfWhite = sfColor(255,255,255,255), ///< White predefined color
    sfRed = sfColor(255,0,0,255),       ///< Red predefined color
    sfGreen = sfColor(0,255,0,255),     ///< Green predefined color
    sfBlue = sfColor(0,0,255,255),      ///< Blue predefined color
    sfYellow = sfColor(255,255,0,255),  ///< Yellow predefined color
    sfMagenta = sfColor(255,0,255,255), ///< Magenta predefined color
    sfCyan = sfColor(0,255,255,255),    ///< Cyan predefined color
    sfTransparent = sfColor(0,0,0,0)    ///< Transparent (black) predefined color
}

////////////////////////////////////////////////////////////
/// \brief Construct a color from its 3 RGB components
///
/// \param red   Red component   (0 .. 255)
/// \param green Green component (0 .. 255)
/// \param blue  Blue component  (0 .. 255)
///
/// \return sfColor constructed from the components
///
////////////////////////////////////////////////////////////
sfColor sfColor_fromRGB(sfUint8 red, sfUint8 green, sfUint8 blue);

////////////////////////////////////////////////////////////
/// \brief Construct a color from its 4 RGBA components
///
/// \param red   Red component   (0 .. 255)
/// \param green Green component (0 .. 255)
/// \param blue  Blue component  (0 .. 255)
/// \param alpha Alpha component (0 .. 255)
///
/// \return sfColor constructed from the components
///
////////////////////////////////////////////////////////////
sfColor sfColor_fromRGBA(sfUint8 red, sfUint8 green, sfUint8 blue, sfUint8 alpha);

////////////////////////////////////////////////////////////
/// \brief Add two colors
///
/// \param color1 First color
/// \param color2 Second color
///
/// \return Component-wise saturated addition of the two colors
///
////////////////////////////////////////////////////////////
sfColor sfColor_add(sfColor color1, sfColor color2);

////////////////////////////////////////////////////////////
/// \brief Modulate two colors
///
/// \param color1 First color
/// \param color2 Second color
///
/// \return Component-wise multiplication of the two colors
///
////////////////////////////////////////////////////////////
sfColor sfColor_modulate(sfColor color1, sfColor color2);


