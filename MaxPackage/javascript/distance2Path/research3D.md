Detection Distance en 3D : 


0. Volume & BoundingBoxneed to be computed before, kdTree created from array of points
3. if (point outside of boundingBox) ==> is outside.
4. else {compute isInsideFunction}
4. Get 3 nearest Points
5. Get Triangles linked to nearest Points
6. forEach(((triangle) => triangle.closestPointToPoint(target), return distance between points in a hash-table).  %(name in hastable should be index of triangle)
7. Get closest dist in hash-table



Open loop closing on itself ?????

https://codepen.io/ksenia-k/pen/xxQPovP




```js
TRIANGLE :
.closestPointToPoint ( point : Vector3, target : Vector3 ) : Vector3

point - Vector3
target — the result will be copied into this Vector3.

Returns the closest point on the triangle to point.


.containsPoint ( point : Vector3 ) : Boolean

point - Vector3 to check.

Returns true if the passed point, when projected onto the plane of the triangle, lies within the triangle. 

.getPlane ( target : Plane ) : Plane

target — the result will be copied into this Plane.

Calculate a plane based on the triangle. . 

 .isFrontFacing ( direction : Vector3 ) : Boolean

direction - The direction to test.

Whether the triangle is oriented towards the given direction or not. 

```

```js
VECTOR 3 : 

.projectOnPlane ( planeNormal : Vector3 ) : this

planeNormal - A vector representing a plane normal.

Projects this vector onto a plane by subtracting this vector projected onto the plane's normal from this vector. 
```

```js
BOX 3 : 
.getCenter ( target : Vector3 ) : Vector3

target — the result will be copied into this Vector3.

Returns the center point of the box as a Vector3. 

.containsPoint ( point : Vector3 ) : Boolean

point - Vector3 to check for inclusion.

Returns true if the specified point lies within or on the boundaries of this box. 
```



```js
RAY :

.closestPointToPoint ( point : Vector3, target : Vector3 ) : Vector3

point - the point to get the closest approach to.
target — the result will be copied into this Vector3.

Get the point along this Ray that is closest to the Vector3 provided. 

.distanceSqToSegment ( v0 : Vector3, v1 : Vector3, optionalPointOnRay : Vector3, optionalPointOnSegment : Vector3 ) : Float

v0 - the start of the line segment.
v1 - the end of the line segment.
optionalPointOnRay - (optional) if this is provided, it receives the point on this Ray that is closest to the segment.
optionalPointOnSegment - (optional) if this is provided, it receives the point on the line segment that is closest to this Ray.

Get the squared distance between this Ray and a line segment.
.distanceToPlane ( plane : Plane ) : Float

plane - the Plane to get the distance to.

Get the distance from origin to the Plane, or null if the Ray doesn't intersect the Plane.
.distanceToPoint ( point : Vector3 ) : Float

point - Vector3 The Vector3 to compute a distance to.

.intersectTriangle ( a : Vector3, b : Vector3, c : Vector3, backfaceCulling : Boolean, target : Vector3 ) : Vector3

a, b, c - The Vector3 points making up the triangle.
backfaceCulling - whether to use backface culling.
target — the result will be copied into this Vector3.

Intersect this Ray with a triangle, returning the intersection point or null if there is no intersection. 

```


```js
Line 3

.closestPointToPoint ( point : Vector3, clampToLine : Boolean, target : Vector3 ) : Vector3

point - return the closest point on the line to this point.
clampToLine - whether to clamp the returned value to the line segment.
target — the result will be copied into this Vector3.

Returns the closets point on the line. If clampToLine is true, then the returned value will be clamped to the line segment. 

```


```js
Raycaster :

.set ( origin : Vector3, direction : Vector3) : undefined

origin — The origin vector where the ray casts from.
direction — The normalized direction vector that gives direction to the ray.

Updates the ray with a new origin and direction. Please note that this method only copies the values from the arguments. 

.intersectObject ( object : Object3D, recursive : Boolean, optionalTarget : Array ) : Array

object — The object to check for intersection with the ray.
recursive — If true, it also checks all descendants. Otherwise it only checks intersection with the object. Default is true.
optionalTarget — (optional) target to set the result. Otherwise a new Array is instantiated. If set, you must clear this array prior to each call (i.e., array.length = 0;).

Checks all intersection between the ray and the object with or without the descendants. Intersections are returned sorted by distance, closest first. An array of intersections is returned...
 [ { distance, point, face, faceIndex, object }, ... ] 

distance – distance between the origin of the ray and the intersection
point – point of intersection, in world coordinates
face – intersected face
faceIndex – index of the intersected face
object – the intersected object
uv - U,V coordinates at point of intersection
uv1 - Second set of U,V coordinates at point of intersection
normal - interpolated normal vector at point of intersection
instanceId – The index number of the instance where the ray intersects the InstancedMesh

Raycaster delegates to the raycast method of the passed object, when evaluating whether the ray intersects the object or not. This allows meshes to respond differently to ray casting than lines and pointclouds.

Note that for meshes, faces must be pointed towards the origin of the ray in order to be detected; intersections of the ray passing through the back of a face will not be detected. To raycast against both faces of an object, you'll want to set the material's side property to THREE.DoubleSide. 

.intersectObjects ( objects : Array, recursive : Boolean, optionalTarget : Array ) : Array

objects — The objects to check for intersection with the ray.
recursive — If true, it also checks all descendants of the objects. Otherwise it only checks intersection with the objects. Default is true.
optionalTarget — (optional) target to set the result. Otherwise a new Array is instantiated. If set, you must clear this array prior to each call (i.e., array.length = 0;).

Checks all intersection between the ray and the objects with or without the descendants. Intersections are returned sorted by distance, closest first. Intersections are of the same form as those returned by .intersectObject. 	
```