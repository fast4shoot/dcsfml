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

module CSFML.Graphics.Font;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import CSFML.Config;
import CSFML.Graphics.Glyph;
import CSFML.Graphics.Types;
import CSFML.System.InputStream;


////////////////////////////////////////////////////////////
/// \brief Create a new font from a file
///
/// \param filename Path of the font file to load
///
/// \return A new sfFont object, or NULL if it failed
///
////////////////////////////////////////////////////////////
sfFont* sfFont_createFromFile(const(char)* filename);

////////////////////////////////////////////////////////////
/// \brief Create a new image font a file in memory
///
/// \param data        Pointer to the file data in memory
/// \param sizeInBytes Size of the data to load, in bytes
///
/// \return A new sfFont object, or NULL if it failed
///
////////////////////////////////////////////////////////////
sfFont* sfFont_createFromMemory(const(void)* data, size_t sizeInBytes);

////////////////////////////////////////////////////////////
/// \brief Create a new image font a custom stream
///
/// \param stream Source stream to read from
///
/// \return A new sfFont object, or NULL if it failed
///
////////////////////////////////////////////////////////////
sfFont* sfFont_createFromStream(sfInputStream* stream);

////////////////////////////////////////////////////////////
/// \brief Copy an existing font
///
/// \param font Font to copy
///
/// \return Copied object
///
////////////////////////////////////////////////////////////
sfFont* sfFont_copy(sfFont* font);

////////////////////////////////////////////////////////////
/// \brief Destroy an existing font
///
/// \param font Font to delete
///
////////////////////////////////////////////////////////////
void sfFont_destroy(sfFont* font);

////////////////////////////////////////////////////////////
/// \brief Get a glyph in a font
///
/// \param font          Source font
/// \param codePoint     Unicode code point of the character to get
/// \param characterSize Character size, in pixels
/// \param bold          Retrieve the bold version or the regular one?
///
/// \return The corresponding glyph
///
////////////////////////////////////////////////////////////
sfGlyph sfFont_getGlyph(sfFont* font, sfUint32 codePoint, uint characterSize, sfBool bold);

////////////////////////////////////////////////////////////
/// \brief Get the kerning value corresponding to a given pair of characters in a font
///
/// \param font          Source font
/// \param first         Unicode code point of the first character
/// \param second        Unicode code point of the second character
/// \param characterSize Character size, in pixels
///
/// \return Kerning offset, in pixels
///
////////////////////////////////////////////////////////////
int sfFont_getKerning(sfFont* font, sfUint32 first, sfUint32 second, uint characterSize);

////////////////////////////////////////////////////////////
/// \brief Get the line spacing value
///
/// \param font          Source font
/// \param codePoint     Unicode code point of the character to get
/// \param characterSize Character size, in pixels
///
/// \return Line spacing, in pixels
///
////////////////////////////////////////////////////////////
int sfFont_getLineSpacing(sfFont* font, uint characterSize);

////////////////////////////////////////////////////////////
/// \brief Get the texture containing the glyphs of a given size in a font
///
/// \param font          Source font
/// \param characterSize Character size, in pixels
///
/// \return Read-only pointer to the texture
///
////////////////////////////////////////////////////////////
const(sfTexture)* sfFont_getTexture(sfFont* font, uint characterSize);

////////////////////////////////////////////////////////////
/// \brief Get the built-in default font (Arial)
///
/// \return Pointer to the default font
///
////////////////////////////////////////////////////////////
sfFont* sfFont_getDefaultFont();


