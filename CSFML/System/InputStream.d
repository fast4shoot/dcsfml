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

module CSFML.System.InputStream;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import CSFML.Config;

alias sfInputStreamReadFunc = sfInt64 function(void* data, sfInt64 size, void* userData);
alias sfInputStreamSeekFunc = sfInt64 function(sfInt64 position, void* userData);
alias sfInputStreamTellFunc = sfInt64 function(void* userData);
alias sfInputStreamGetSizeFunc = sfInt64 function(void* userData);


////////////////////////////////////////////////////////////
/// \brief Set of callbacks that allow users to define custom file streams
///
////////////////////////////////////////////////////////////
struct sfInputStream
{
    sfInputStreamReadFunc    read;     ///< Function to read data from the stream
    sfInputStreamSeekFunc    seek;     ///< Function to set the current read position
    sfInputStreamTellFunc    tell;     ///< Function to get the current read position
    sfInputStreamGetSizeFunc getSize;  ///< Function to get the total number of bytes in the stream
    void*                    userData; ///< User data that will be passed to the callbacks
}


