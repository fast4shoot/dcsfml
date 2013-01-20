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

module CSFML.Graphics.RectangleShape;
extern(System):

////////////////////////////////////////////////////////////
// Imports
////////////////////////////////////////////////////////////
import CSFML.Config;
import CSFML.Graphics.Color;
import CSFML.Graphics.Rect;
import CSFML.Graphics.Types;
import CSFML.System.Vector2;


////////////////////////////////////////////////////////////
/// \brief Create a new rectangle shape
///
/// \return A new sfRectangleShape object, or NULL if it failed
///
////////////////////////////////////////////////////////////
sfRectangleShape* sfRectangleShape_create();

////////////////////////////////////////////////////////////
/// \brief Copy an existing rectangle shape
///
/// \param shape Shape to copy
///
/// \return Copied object
///
////////////////////////////////////////////////////////////
sfRectangleShape* sfRectangleShape_copy(sfRectangleShape* shape);

////////////////////////////////////////////////////////////
/// \brief Destroy an existing rectangle shape
///
/// \param Shape Shape to delete
///
////////////////////////////////////////////////////////////
void sfRectangleShape_destroy(sfRectangleShape* shape);

////////////////////////////////////////////////////////////
/// \brief Set the position of a rectangle shape
///
/// This function completely overwrites the previous position.
/// See sfRectangleShape_move to apply an offset based on the previous position instead.
/// The default position of a circle Shape object is (0, 0).
///
/// \param shape    Shape object
/// \param position New position
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setPosition(sfRectangleShape* shape, sfVector2f position);

////////////////////////////////////////////////////////////
/// \brief Set the orientation of a rectangle shape
///
/// This function completely overwrites the previous rotation.
/// See sfRectangleShape_rotate to add an angle based on the previous rotation instead.
/// The default rotation of a circle Shape object is 0.
///
/// \param shape Shape object
/// \param angle New rotation, in degrees
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setRotation(sfRectangleShape* shape, float angle);

////////////////////////////////////////////////////////////
/// \brief Set the scale factors of a rectangle shape
///
/// This function completely overwrites the previous scale.
/// See sfRectangleShape_scale to add a factor based on the previous scale instead.
/// The default scale of a circle Shape object is (1, 1).
///
/// \param shape Shape object
/// \param scale New scale factors
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setScale(sfRectangleShape* shape, sfVector2f scale);

////////////////////////////////////////////////////////////
/// \brief Set the local origin of a rectangle shape
///
/// The origin of an object defines the center point for
/// all transformations (position, scale, rotation).
/// The coordinates of this point must be relative to the
/// top-left corner of the object, and ignore all
/// transformations (position, scale, rotation).
/// The default origin of a circle Shape object is (0, 0).
///
/// \param shape  Shape object
/// \param origin New origin
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setOrigin(sfRectangleShape* shape, sfVector2f origin);

////////////////////////////////////////////////////////////
/// \brief Get the position of a rectangle shape
///
/// \param shape Shape object
///
/// \return Current position
///
////////////////////////////////////////////////////////////
sfVector2f sfRectangleShape_getPosition(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the orientation of a rectangle shape
///
/// The rotation is always in the range [0, 360].
///
/// \param shape Shape object
///
/// \return Current rotation, in degrees
///
////////////////////////////////////////////////////////////
float sfRectangleShape_getRotation(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the current scale of a rectangle shape
///
/// \param shape Shape object
///
/// \return Current scale factors
///
////////////////////////////////////////////////////////////
sfVector2f sfRectangleShape_getScale(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the local origin of a rectangle shape
///
/// \param shape Shape object
///
/// \return Current origin
///
////////////////////////////////////////////////////////////
sfVector2f sfRectangleShape_getOrigin(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Move a rectangle shape by a given offset
///
/// This function adds to the current position of the object,
/// unlike sfRectangleShape_setPosition which overwrites it.
///
/// \param shape  Shape object
/// \param offset Offset
///
////////////////////////////////////////////////////////////
void sfRectangleShape_move(sfRectangleShape* shape, sfVector2f offset);

////////////////////////////////////////////////////////////
/// \brief Rotate a rectangle shape
///
/// This function adds to the current rotation of the object,
/// unlike sfRectangleShape_setRotation which overwrites it.
///
/// \param shape Shape object
/// \param angle Angle of rotation, in degrees
///
////////////////////////////////////////////////////////////
void sfRectangleShape_rotate(sfRectangleShape* shape, float angle);

////////////////////////////////////////////////////////////
/// \brief Scale a rectangle shape
///
/// This function multiplies the current scale of the object,
/// unlike sfRectangleShape_setScale which overwrites it.
///
/// \param shape   Shape object
/// \param factors Scale factors
///
////////////////////////////////////////////////////////////
void sfRectangleShape_scale(sfRectangleShape* shape, sfVector2f factors);

////////////////////////////////////////////////////////////
/// \brief Get the combined transform of a rectangle shape
///
/// \param shape shape object
///
/// \return Transform combining the position/rotation/scale/origin of the object
///
////////////////////////////////////////////////////////////
const(sfTransform)* sfRectangleShape_getTransform(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the inverse of the combined transform of a rectangle shape
///
/// \param shape shape object
///
/// \return Inverse of the combined transformations applied to the object
///
////////////////////////////////////////////////////////////
const(sfTransform)* sfRectangleShape_getInverseTransform(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Change the source texture of a rectangle shape
///
/// The \a texture argument refers to a texture that must
/// exist as long as the shape uses it. Indeed, the shape
/// doesn't store its own copy of the texture, but rather keeps
/// a pointer to the one that you passed to this function.
/// If the source texture is destroyed and the shape tries to
/// use it, the behaviour is undefined.
/// \a texture can be NULL to disable texturing.
/// If \a resetRect is true, the TextureRect property of
/// the shape is automatically adjusted to the size of the new
/// texture. If it is false, the texture rect is left unchanged.
///
/// \param shape     Shape object
/// \param texture   New texture
/// \param resetRect Should the texture rect be reset to the size of the new texture?
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setTexture(sfRectangleShape* shape, const(sfTexture)* texture, sfBool resetRect);

////////////////////////////////////////////////////////////
/// \brief Set the sub-rectangle of the texture that a rectangle shape will display
///
/// The texture rect is useful when you don't want to display
/// the whole texture, but rather a part of it.
/// By default, the texture rect covers the entire texture.
///
/// \param shape Shape object
/// \param rect  Rectangle defining the region of the texture to display
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setTextureRect(sfRectangleShape* shape, sfIntRect rect);

////////////////////////////////////////////////////////////
/// \brief Set the fill color of a rectangle shape
///
/// This color is modulated (multiplied) with the shape's
/// texture if any. It can be used to colorize the shape,
/// or change its global opacity.
/// You can use sfTransparent to make the inside of
/// the shape transparent, and have the outline alone.
/// By default, the shape's fill color is opaque white.
///
/// \param shape Shape object
/// \param color New color of the shape
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setFillColor(sfRectangleShape* shape, sfColor color);

////////////////////////////////////////////////////////////
/// \brief Set the outline color of a rectangle shape
///
/// You can use sfTransparent to disable the outline.
/// By default, the shape's outline color is opaque white.
///
/// \param shape Shape object
/// \param color New outline color of the shape
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setOutlineColor(sfRectangleShape* shape, sfColor color);

////////////////////////////////////////////////////////////
/// \brief Set the thickness of a rectangle shape's outline
///
/// This number cannot be negative. Using zero disables
/// the outline.
/// By default, the outline thickness is 0.
///
/// \param shape     Shape object
/// \param thickness New outline thickness
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setOutlineThickness(sfRectangleShape* shape, float thickness);

////////////////////////////////////////////////////////////
/// \brief Get the source texture of a rectangle shape
///
/// If the shape has no source texture, a NULL pointer is returned.
/// The returned pointer is const, which means that you can't
/// modify the texture when you retrieve it with this function.
///
/// \param shape Shape object
///
/// \return Pointer to the shape's texture
///
////////////////////////////////////////////////////////////
const(sfTexture)* sfRectangleShape_getTexture(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the sub-rectangle of the texture displayed by a rectangle shape
///
/// \param shape Shape object
///
/// \return Texture rectangle of the shape
///
////////////////////////////////////////////////////////////
sfIntRect sfRectangleShape_getTextureRect(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the fill color of a rectangle shape
///
/// \param shape Shape object
///
/// \return Fill color of the shape
///
////////////////////////////////////////////////////////////
sfColor sfRectangleShape_getFillColor(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the outline color of a rectangle shape
///
/// \param shape Shape object
///
/// \return Outline color of the shape
///
////////////////////////////////////////////////////////////
sfColor sfRectangleShape_getOutlineColor(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the outline thickness of a rectangle shape
///
/// \param shape Shape object
///
/// \return Outline thickness of the shape
///
////////////////////////////////////////////////////////////
float sfRectangleShape_getOutlineThickness(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the total number of points of a rectangle shape
///
/// \param shape Shape object
///
/// \return Number of points of the shape
///
////////////////////////////////////////////////////////////
uint sfRectangleShape_getPointCount(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get a point of a rectangle shape
///
/// The result is undefined if \a index is out of the valid range.
///
/// \param shape Shape object
/// \param index Index of the point to get, in range [0 .. getPointCount() - 1]
///
/// \return Index-th point of the shape
///
////////////////////////////////////////////////////////////
sfVector2f sfRectangleShape_getPoint(const(sfRectangleShape)* shape, uint index);

////////////////////////////////////////////////////////////
/// \brief Set the size of a rectangle shape
///
/// \param shape Shape object
/// \param size  New size of the rectangle
///
////////////////////////////////////////////////////////////
void sfRectangleShape_setSize(sfRectangleShape* shape, sfVector2f size);

////////////////////////////////////////////////////////////
/// \brief Get the size of a rectangle shape
///
/// \param shape Shape object
//
/// \return height Size of the rectangle
///
////////////////////////////////////////////////////////////
sfVector2f sfRectangleShape_getSize(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the local bounding rectangle of a rectangle shape
///
/// The returned rectangle is in local coordinates, which means
/// that it ignores the transformations (translation, rotation,
/// scale, ...) that are applied to the entity.
/// In other words, this function returns the bounds of the
/// entity in the entity's coordinate system.
///
/// \param shape Shape object
///
/// \return Local bounding rectangle of the entity
///
////////////////////////////////////////////////////////////
sfFloatRect sfRectangleShape_getLocalBounds(const(sfRectangleShape)* shape);

////////////////////////////////////////////////////////////
/// \brief Get the global bounding rectangle of a rectangle shape
///
/// The returned rectangle is in global coordinates, which means
/// that it takes in account the transformations (translation,
/// rotation, scale, ...) that are applied to the entity.
/// In other words, this function returns the bounds of the
/// sprite in the global 2D world's coordinate system.
///
/// \param shape Shape object
///
/// \return Global bounding rectangle of the entity
///
////////////////////////////////////////////////////////////
sfFloatRect sfRectangleShape_getGlobalBounds(const(sfRectangleShape)* shape);

