# PhoneNumber.js

*Warning*: This version needs the metadata from libphonenumber < 8.4.2 as the XML
format changed. For more information see the
[v8.4.2 Release Notes](https://github.com/googlei18n/libphonenumber/releases/tag/v8.4.2)
and the
[original announcement](https://groups.google.com/d/msg/libphonenumber-discuss/75TOpTFVi08/dPDiBBuyDQAJ).

PhoneNumber.js is a JavaScript library to verify and format phone numbers.
It is similar in purpose to Google's libphonenumber library, with the main difference
that Google's code is some incredibly ugly spaghetti code that was cross-compiled
from Java and uses around 10MB of memory.

The memory use of PhoneNumber.js starts around 60k and increases as region meta data
is unpacked. Depending on the memory layout of the specific JavaScript engine, peak
memory use should be below 200k. If you mostly format numbers from one or a few
regions, memory use should be pretty close to 60k.

PhoneNumber.js uses libphonenumber's PhoneNumberMetadata.xml database of known
phone number formats. Use "make" to download the xml file and translate it
into PhoneNumber.js's internal format.

# Copyright and license

PhoneNumber.js was written by Andreas Gal <gal@mozilla.com> as part of Mozilla's
Firefox OS (Boot to Gecko) project and is licensed under the Apache License, Version 2.0.


