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

module CSFML.System.Clock;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import CSFML.System.Types;
import CSFML.System.Time;


////////////////////////////////////////////////////////////
/// \brief Create a new clock and start it
///
/// \return A new sfClock object
///
////////////////////////////////////////////////////////////
sfClock* sfClock_create();

////////////////////////////////////////////////////////////
/// \brief Create a new clock by copying an existing one
///
/// \param clock Clock to copy
///
/// \return A new sfClock object which is a copy of \a clock
///
////////////////////////////////////////////////////////////
sfClock* sfClock_copy(sfClock* clock);

////////////////////////////////////////////////////////////
/// \brief Destroy a clock
///
/// \param clock Clock to destroy
///
////////////////////////////////////////////////////////////
void sfClock_destroy(sfClock* clock);

////////////////////////////////////////////////////////////
/// \brief Get the time elapsed in a clock
///
/// This function returns the time elapsed since the last call
/// to sfClock_restart (or the construction of the object if
/// sfClock_restart has not been called).
///
/// \param clock Clock object
///
/// \return Time elapsed
///
////////////////////////////////////////////////////////////
sfTime sfClock_getElapsedTime(const(sfClock)* clock);

////////////////////////////////////////////////////////////
/// \brief Restart a clock
///
/// This function puts the time counter back to zero.
/// It also returns the time elapsed since the clock was started.
///
/// \param clock Clock object
///
/// \return Time elapsed
///
////////////////////////////////////////////////////////////
sfTime sfClock_restart(sfClock* clock);


