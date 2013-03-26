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

module dcsfml.Network.UdpSocket;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import dcsfml.Config;
import dcsfml.Network.IpAddress;
import dcsfml.Network.SocketStatus;
import dcsfml.Network.Types;


////////////////////////////////////////////////////////////
/// \brief Create a new UDP socket
///
/// \return A new sfUdpSocket object
///
////////////////////////////////////////////////////////////
sfUdpSocket* sfUdpSocket_create();

////////////////////////////////////////////////////////////
/// \brief Destroy a UDP socket
///
/// \param socket UDP socket to destroy
///
////////////////////////////////////////////////////////////
void sfUdpSocket_destroy(sfUdpSocket* socket);

////////////////////////////////////////////////////////////
/// \brief Set the blocking state of a UDP listener
///
/// In blocking mode, calls will not return until they have
/// completed their task. For example, a call to
/// sfUDPSocket_receive in blocking mode won't return until
/// new data was actually received.
/// In non-blocking mode, calls will always return immediately,
/// using the return code to signal whether there was data
/// available or not.
/// By default, all sockets are blocking.
///
/// \param socket   UDP socket object
/// \param blocking sfTrue to set the socket as blocking, sfFalse for non-blocking
///
////////////////////////////////////////////////////////////
void sfUdpSocket_setBlocking(sfUdpSocket* socket, sfBool blocking);

////////////////////////////////////////////////////////////
/// \brief Tell whether a UDP socket is in blocking or non-blocking mode
///
/// \param socket UDP socket object
///
/// \return sfTrue if the socket is blocking, sfFalse otherwise
///
////////////////////////////////////////////////////////////
sfBool sfUdpSocket_isBlocking(const(sfUdpSocket)* socket);

////////////////////////////////////////////////////////////
/// \brief Get the port to which a UDP socket is bound locally
///
/// If the socket is not bound to a port, this function
/// returns 0.
///
/// \param socket UDP socket object
///
/// \return Port to which the socket is bound
///
////////////////////////////////////////////////////////////
ushort sfUdpSocket_getLocalPort(const(sfUdpSocket)* socket);

////////////////////////////////////////////////////////////
/// \brief Bind a UDP socket to a specific port
///
/// Binding the socket to a port is necessary for being
/// able to receive data on that port.
/// You can use the special value 0 to tell the
/// system to automatically pick an available port, and then
/// call sfUdpSocket_getLocalPort to retrieve the chosen port.
///
/// \param socket UDP socket object
/// \param port   Port to bind the socket to
///
/// \return Status code
///
////////////////////////////////////////////////////////////
sfSocketStatus sfUdpSocket_bind(sfUdpSocket* socket, ushort port);

////////////////////////////////////////////////////////////
/// \brief Unbind a UDP socket from the local port to which it is bound
///
/// The port that the socket was previously using is immediately
/// available after this function is called. If the
/// socket is not bound to a port, this function has no effect.
///
/// \param socket UDP socket object
///
////////////////////////////////////////////////////////////
void sfUdpSocket_unbind(sfUdpSocket* socket);

////////////////////////////////////////////////////////////
/// \brief Send raw data to a remote peer with a UDP socket
///
/// Make sure that \a size is not greater than
/// sfUdpSocket_maxDatagramSize(), otherwise this function will
/// fail and no data will be sent.
///
/// \param socket        UDP socket object
/// \param data          Pointer to the sequence of bytes to send
/// \param size          Number of bytes to send
/// \param remoteAddress Address of the receiver
/// \param remotePort    Port of the receiver to send the data to
///
/// \return Status code
///
////////////////////////////////////////////////////////////
sfSocketStatus sfUdpSocket_send(sfUdpSocket* socket, const(void)* data, size_t size, sfIpAddress address, ushort port);

////////////////////////////////////////////////////////////
/// \brief Receive raw data from a remote peer with a UDP socket
///
/// In blocking mode, this function will wait until some
/// bytes are actually received.
/// Be careful to use a buffer which is large enough for
/// the data that you intend to receive, if it is too small
/// then an error will be returned and *all* the data will
/// be lost.
///
/// \param socket        UDP socket object
/// \param data          Pointer to the array to fill with the received bytes
/// \param size          Maximum number of bytes that can be received
/// \param received      This variable is filled with the actual number of bytes received
/// \param remoteAddress Address of the peer that sent the data
/// \param remotePort    Port of the peer that sent the data
///
/// \return Status code
///
////////////////////////////////////////////////////////////
sfSocketStatus sfUdpSocket_receive(sfUdpSocket* socket, void* data, size_t maxSize, size_t* sizeReceived, sfIpAddress* address, ushort* port);

////////////////////////////////////////////////////////////
/// \brief Send a formatted packet of data to a remote peer with a UDP socket
///
/// Make sure that the packet size is not greater than
/// sfUdpSocket_maxDatagramSize(), otherwise this function will
/// fail and no data will be sent.
///
/// \param socket        UDP socket object
/// \param packet        Packet to send
/// \param remoteAddress Address of the receiver
/// \param remotePort    Port of the receiver to send the data to
///
/// \return Status code
///
////////////////////////////////////////////////////////////
sfSocketStatus sfUdpSocket_sendPacket(sfUdpSocket* socket, sfPacket* packet, sfIpAddress address, ushort port);

////////////////////////////////////////////////////////////
/// \brief Receive a formatted packet of data from a remote peer with a UDP socket
///
/// In blocking mode, this function will wait until the whole packet
/// has been received.
///
/// \param packet        Packet to fill with the received data
/// \param remoteAddress Address of the peer that sent the data
/// \param remotePort    Port of the peer that sent the data
///
/// \return Status code
///
////////////////////////////////////////////////////////////
sfSocketStatus sfUdpSocket_receivePacket(sfUdpSocket* socket, sfPacket* packet, sfIpAddress* address, ushort* port);

////////////////////////////////////////////////////////////
/// \brief Return the maximum number of bytes that can be
///        sent in a single UDP datagram
///
/// \return The maximum size of a UDP datagram (message)
///
////////////////////////////////////////////////////////////
uint sfUdpSocket_maxDatagramSize();


