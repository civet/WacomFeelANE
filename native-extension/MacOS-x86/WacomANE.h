/*
 * Version: MPL 1.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is WacomANE.h
 *
 * The Initial Developer of the Original Code is Nicholas Kwiatkowski.
 * Portions created by the Initial Developer are Copyright (C) 2011
 * the Initial Developer. All Rights Reserved.
 *
 */

#define EXPORT __attribute__((visibility("default")))

#ifndef WacomANE_H_
#define WacomANE_H_
#include "/Applications/Adobe/Adobe Flash Builder 4.7/sdks/4.6.0/runtimes/air/mac/Adobe AIR.framework/Headers/FlashRuntimeExtensions.h"
//#include <Adobe AIR/Adobe AIR.h>

EXPORT
void WacomANEinitializer(void** extData, FREContextInitializer* ctxInitializer, FREContextFinalizer* ctxFinalizer);

EXPORT
void WacomANEfinalizer(void* extData);

#endif /* WacomANE_H_ */
