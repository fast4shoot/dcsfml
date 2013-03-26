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

module dcsfml.Graphics.VertexArray;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import dcsfml.Graphics.PrimitiveType;
import dcsfml.Graphics.Rect;
import dcsfml.Graphics.Types;
import dcsfml.Graphics.Vertex;


////////////////////////////////////////////////////////////
/// \brief Create a new vertex array
///
/// \return A new sfVertexArray object
///
////////////////////////////////////////////////////////////
sfVertexArray* sfVertexArray_create();

////////////////////////////////////////////////////////////
/// \brief Copy an existing vertex array
///
/// \param vertexArray Vertex array to copy
///
/// \return Copied object
///
////////////////////////////////////////////////////////////
sfVertexArray* sfVertexArray_copy(sfVertexArray* vertexArray);

////////////////////////////////////////////////////////////
/// \brief Destroy an existing vertex array
///
/// \param vertexArray Vertex array to delete
///
////////////////////////////////////////////////////////////
void sfVertexArray_destroy(sfVertexArray* vertexArray);

////////////////////////////////////////////////////////////
/// \brief Return the vertex count of a vertex array
///
/// \param vertexArray Vertex array object
///
/// \return Number of vertices in the array
///
////////////////////////////////////////////////////////////
uint sfVertexArray_getVertexCount(const(sfVertexArray)* vertexArray);

////////////////////////////////////////////////////////////
/// \brief Get access to a vertex by its index
///
/// This function doesn't check \a index, it must be in range
/// [0, vertex count - 1]. The behaviour is undefined
/// otherwise.
///
/// \param vertexArray Vertex array object
/// \param index       Index of the vertex to get
///
/// \return Pointer to the index-th vertex
///
////////////////////////////////////////////////////////////
sfVertex* sfVertexArray_getVertex(sfVertexArray* vertexArray, uint index);

////////////////////////////////////////////////////////////
/// \brief Clear a vertex array
///
/// This function removes all the vertices from the array.
/// It doesn't deallocate the corresponding memory, so that
/// adding new vertices after clearing doesn't involve
/// reallocating all the memory.
///
/// \param vertexArray Vertex array object
///
////////////////////////////////////////////////////////////
void sfVertexArray_clear(sfVertexArray* vertexArray);

////////////////////////////////////////////////////////////
/// \brief Resize the vertex array
///
/// If \a vertexCount is greater than the current size, the previous
/// vertices are kept and new (default-constructed) vertices are
/// added.
/// If \a vertexCount is less than the current size, existing vertices
/// are removed from the array.
///
/// \param vertexArray Vertex array objet
/// \param vertexCount New size of the array (number of vertices)
///
////////////////////////////////////////////////////////////
void sfVertexArray_resize(sfVertexArray* vertexArray, uint vertexCount);

////////////////////////////////////////////////////////////
/// \brief Add a vertex to a vertex array array
///
/// \param vertexArray Vertex array objet
/// \param vertex      Vertex to add
///
////////////////////////////////////////////////////////////
void sfVertexArray_append(sfVertexArray* vertexArray, sfVertex vertex);

////////////////////////////////////////////////////////////
/// \brief Set the type of primitives of a vertex array
///
/// This function defines how the vertices must be interpreted
/// when it's time to draw them:
/// \li As points
/// \li As lines
/// \li As triangles
/// \li As quads
/// The default primitive type is sfPoints.
///
/// \param vertexArray Vertex array objet
/// \param type        Type of primitive
///
////////////////////////////////////////////////////////////
void sfVertexArray_setPrimitiveType(sfVertexArray* vertexArray, sfPrimitiveType type);

////////////////////////////////////////////////////////////
/// \brief Get the type of primitives drawn by a vertex array
///
/// \param vertexArray Vertex array objet
///
/// \return Primitive type
///
////////////////////////////////////////////////////////////
sfPrimitiveType sfVertexArray_getPrimitiveType(sfVertexArray* vertexArray);

////////////////////////////////////////////////////////////
/// \brief Compute the bounding rectangle of a vertex array
///
/// This function returns the axis-aligned rectangle that
/// contains all the vertices of the array.
///
/// \param vertexArray Vertex array objet
///
/// \return Bounding rectangle of the vertex array
///
////////////////////////////////////////////////////////////
sfFloatRect sfVertexArray_getBounds(sfVertexArray* vertexArray);


