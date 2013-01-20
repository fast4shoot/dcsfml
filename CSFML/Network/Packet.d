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

module CSFML.Network.Packet;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import CSFML.Config;
import CSFML.Network.Types;
import core.stdc.stddef;


////////////////////////////////////////////////////////////
/// \brief Create a new packet
///
/// \return A new sfPacket object
///
////////////////////////////////////////////////////////////
sfPacket* sfPacket_create();

////////////////////////////////////////////////////////////
/// \brief Create a new packet by copying an existing one
///
/// \param packet Packet to copy
///
/// \return A new sfPacket object which is a copy of \a packet
///
////////////////////////////////////////////////////////////
sfPacket* sfPacket_copy(sfPacket* packet);

////////////////////////////////////////////////////////////
/// \brief Destroy a packet
///
/// \param packet Packet to destroy
///
////////////////////////////////////////////////////////////
void sfPacket_destroy(sfPacket* packet);

////////////////////////////////////////////////////////////
/// \brief Append data to the end of a packet
///
/// \param packet      Packet object
/// \param data        Pointer to the sequence of bytes to append
/// \param sizeInBytes Number of bytes to append
///
////////////////////////////////////////////////////////////
void sfPacket_append(sfPacket* packet, const(void)* data, size_t sizeInBytes);

////////////////////////////////////////////////////////////
/// \brief Clear a packet
///
/// After calling Clear, the packet is empty.
///
/// \param packet Packet object
///
///////////////////////////////////////////////////////////
void sfPacket_clear(sfPacket* packet);

////////////////////////////////////////////////////////////
/// \brief Get a pointer to the data contained in a packet
///
/// Warning: the returned pointer may become invalid after
/// you append data to the packet, therefore it should never
/// be stored.
/// The return pointer is NULL if the packet is empty.
///
/// \param packet Packet object
///
/// \return Pointer to the data
///
////////////////////////////////////////////////////////////
const(void)* sfPacket_getData(const(sfPacket)* packet);

////////////////////////////////////////////////////////////
/// \brief Get the size of the data contained in a packet
///
/// This function returns the number of bytes pointed to by
/// what sfPacket_getData returns.
///
/// \param packet Packet object
///
/// \return Data size, in bytes
///
////////////////////////////////////////////////////////////
size_t sfPacket_getDataSize(const(sfPacket)* packet);

////////////////////////////////////////////////////////////
/// \brief Tell if the reading position has reached the
///        end of a packet
///
/// This function is useful to know if there is some data
/// left to be read, without actually reading it.
///
/// \param packet Packet object
///
/// \return sfTrue if all data was read, sfFalse otherwise
///
////////////////////////////////////////////////////////////
sfBool sfPacket_endOfPacket(const(sfPacket)* packet);

////////////////////////////////////////////////////////////
/// \brief Test the validity of a packet, for reading
///
/// This function allows to test the packet, to check if
/// a reading operation was successful.
///
/// A packet will be in an invalid state if it has no more
/// data to read.
///
/// \param packet Packet object
///
/// \return sfTrue if last data extraction from packet was successful
///
////////////////////////////////////////////////////////////
sfBool sfPacket_canRead(const(sfPacket)* packet);

////////////////////////////////////////////////////////////
/// \brief Functions to extract data from a packet
///
/// \param packet Packet object
///
////////////////////////////////////////////////////////////
sfBool   sfPacket_readBool(sfPacket* packet);
sfInt8   sfPacket_readInt8(sfPacket* packet);
sfUint8  sfPacket_readUint8(sfPacket* packet);
sfInt16  sfPacket_readInt16(sfPacket* packet);
sfUint16 sfPacket_readUint16(sfPacket* packet);
sfInt32  sfPacket_readInt32(sfPacket* packet);
sfUint32 sfPacket_readUint32(sfPacket* packet);
float    sfPacket_readFloat(sfPacket* packet);
double   sfPacket_readDouble(sfPacket* packet);
void     sfPacket_readString(sfPacket* packet, char* string);
void     sfPacket_readWideString(sfPacket* packet, wchar_t* string);

////////////////////////////////////////////////////////////
/// \brief Functions to insert data into a packet
///
/// \param packet Packet object
///
////////////////////////////////////////////////////////////
void sfPacket_writeBool(sfPacket* packet, sfBool);
void sfPacket_writeInt8(sfPacket* packet, sfInt8);
void sfPacket_writeUint8(sfPacket* packet, sfUint8);
void sfPacket_writeInt16(sfPacket* packet, sfInt16);
void sfPacket_writeUint16(sfPacket* packet, sfUint16);
void sfPacket_writeInt32(sfPacket* packet, sfInt32);
void sfPacket_writeUint32(sfPacket* packet, sfUint32);
void sfPacket_writeFloat(sfPacket* packet, float);
void sfPacket_writeDouble(sfPacket* packet, double);
void sfPacket_writeString(sfPacket* packet, const(char)* string);
void sfPacket_writeWideString(sfPacket* packet, const wchar_t* string);


