// Copyright 2019 Egor Belibov. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clock_helper/customizer.dart';
import 'package:flutter_clock_helper/model.dart';
import 'package:property_change_notifier/property_change_notifier.dart';

import 'clock.dart';
import 'state/clock_state.dart';

void main() {
  // A temporary measure until Platform supports web and TargetPlatform supports macOS.
  // TODO: Update this when TargetPlatform includes macOS.
  if (!kIsWeb && Platform.isMacOS) {
    // https://github.com/flutter/flutter/issues/31366
    // See https://github.com/flutter/flutter/wiki/Desktop-shells#target-platform-override.
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }

  runApp(
    PropertyChangeProvider<ClockState>(
      value: ClockState(),
      child: ClockCustomizer(
        (ClockModel model) {
          return Clock(model);
        },
      ),
    ),
  );
}