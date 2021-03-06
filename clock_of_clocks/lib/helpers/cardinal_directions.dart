// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:math';

/// Cardinal and Intercardinal Directions (🧭).
///
///   - NW N NE
///   - W. + .E
///   - SW S SE
///
/// - Cardinal Directions: [east, south, west, north].
/// - Intercardinal Directions: [nortWest, northEast, southWest, southEast].
enum Direction {
  east,
  southEast,
  south,
  southWest,
  west,
  northWest,
  north,
  northEast,
}

/// Clock Hand Direction Angles (Rad unit).
final Map<Direction, double> directionAngles = {
  Direction.east: 0,
  Direction.southEast: pi / 4,
  Direction.south: pi / 2,
  Direction.southWest: 3 * pi / 4,
  Direction.west: pi,
  Direction.northWest: 5 * pi / 4,
  Direction.north: 3 * pi / 2,
  Direction.northEast: 7 * pi / 4,
};
