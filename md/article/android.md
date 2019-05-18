<!-- pubdate: 20110919 -->
<!-- author: Richard Stallman -->

# Android and Users' Freedom

First published in [The Guardian][artcl].

[artcl]: https://www.theguardian.com/technology/2011/sep/19/android-free-software-stallman

To what extent does Android respect the freedom of its users? For a
computer user that values freedom, that is the most important question
to ask about any software system.

In the [free/libre software movement][0], we develop software that
respects users' freedom, so we and you can escape from software that
doesn't. By contrast, the idea of "open source" focuses on how to
develop code; it is a different current of thought whose principal
value is [code quality rather than freedom][1].Thus, the concern here
is not whether Android is "open", but whether it allows users to be
free.

[0]: https://fsf.org
[1]: https://www.gnu.org/philosophy/open-source-misses-the-point.html


Android is an operating system primarily for mobile phones, which
consists of Linux (Torvalds's kernel), some libraries, a Java platform
and some applications. Linux aside, the software of Android versions 1
and 2 was mostly developed by Google; Google released it under the
Apache 2.0 license, which is a lax free software license without
[copyleft][cl].

[cl]: https://www.gnu.org/licenses/copyleft.html

The version of Linux included in Android is not entirely free
software, since it contains non-free "binary blobs" (just like
Torvalds' version of Linux), some of which are really used in some
Android devices. Android platforms use other non-free firmware, too,
and non-free libraries. Aside from those, the source code of Android
versions 1 and 2, as released by Google, is free software – but this
code is insufficient to run the device. Some of the applications that
generally come with Android are non-free, too.

Android is very different from the [GNU/Linux operating
system][gnu-project] because it contains very little of GNU. Indeed,
just about the only component in common between Android and GNU/Linux
is Linux, the kernel. People who erroneously think "Linux" refers to
the entire GNU/Linux combination get tied in knots by these facts, and
make paradoxical statements such as "Android contains Linux, but it
isn't Linux". If we avoid starting from the confusion, the situation
is simple: Android contains Linux, but not GNU; thus, Android and
GNU/Linux are mostly different.

[gnu-project]: https://www.gnu.org/gnu/the-gnu-project.html

(Within Android, Linux the kernel remains a separate program, with its
source code under [GNU GPL version 2][gpl-2]. To combine Linux with
code under the Apache 2.0 license would be copyright infringement,
since GPL version 2 and Apache 2.0 are
[incompatible][gpl-apache-incompat]. Rumours that Google has somehow
converted Linux to the Apache license are erroneous; Google has no
power to change the licence on the code of Linux, and did not try. If
the authors of Linux allowed its use under GPL version 3, then that
code could be combined with Apache-licensed code, and the combination
could be released under GPL version 3. But Linux has not been released
that way.)

[gpl-2]: https://www.gnu.org/licenses/gpl-2.0.html
[gpl-apache-incompat]: https://www.gnu.org/licenses/license-list.html#apache2

Google has complied with the requirements of the GNU General Public
License for Linux, but the Apache license on the rest of Android does
not require source release. Google has said it will never publish the
source code of Android 3.0 (aside from Linux), even though executables
have been released to the public. Android 3.1 source code is also
being withheld. Thus, Android 3, apart from Linux, is non-free
software, pure and simple.

Google said it withheld the 3.0 source code because it was buggy, and
that people should wait for the next release. That may be good advice
for people who simply want to run the Android system, but the users
should be the ones to decide this. Anyway, developers and tinkerers
who want to include some of the changes in their own versions could
use that code just fine.

The non-release of two versions' source code raises concern that
Google might intend to turn Android proprietary permanently; that the
release of some Android versions as free software may have been a
temporary ploy to get community assistance in improving a proprietary
software product. Let us hope does not happen.

In any case, most of the source code of some versions of Android has
been released as free software. Does that mean that products using
those Android versions respect users' freedom? No, for several
reasons.  First of all, most of them contain non-free Google
applications for talking to services such as YouTube and Google
Maps. These are officially not part of Android, but that doesn't make
the product OK. There are also non-free libraries; whether they are
part of Android is a moot point. What matters is that various
functionalities need them.

Even the executables that are officially part of Android may not
correspond to the source code Google releases. Manufacturers may
change this code, and often they don't release the source code for
their versions. The GNU GPL requires them to distribute the code for
their versions of Linux, if they comply. The rest of the code, under
the lax Apache license, does not require them to release the source
version that they really use. Replicant, a free version of Android
that supports just a few phone models, has replaced many of these
libraries, and you can do without the non-free apps. But there are
other problems.

Some device models are designed to stop users from installing and
using modified software. In that situation, the executables are not
free even if they were made from sources that are free and available
to you. However, some Android devices can be "rooted" so users can
install different software.

Important firmware or drivers are generally proprietary also. These
handle the phone network radio, Wi-Fi, bluetooth, GPS, 3D graphics,
the camera, the speaker, and in some cases the microphone too. On some
models, a few of these drivers are free, and there are some that you
can do without – but you can't do without the microphone or the phone
network radio.

The phone network firmware comes pre-installed. If all it did was sit
there and run, we could regard it as equivalent to a circuit. When we
insist that the software in a computing device must be free, we can
overlook pre-installed firmware that will never be upgraded, because
it makes no difference to the user that it's a program rather than a
circuit.

Unfortunately, in this case it would be a malicious circuit. Malicious
features are unacceptable no matter how they are implemented.

On most Android phones, this firmware has so much control that it
could turn the product into a listening device. On some, it controls
the microphone. On some, it can take full control of the main
computer, through shared memory, and can thus override or replace
whatever free software you have installed. With some models it is
possible to exercise remote control of this firmware, and thus of the
phone's computer, through the phone radio network.

The point of free software is that we have control of our computing,
and this doesn't qualify. While any computing system might have bugs,
these devices might be bugs. (Craig Murray, in Murder in Samarkand,
relates his involvement in an intelligence operation that remotely
converted an unsuspecting target's non-Android portable phone into a
listening device.)

In any case, the phone network firmware in an Android device is not
equivalent to a circuit, because the hardware allows installation of
new versions and this is actually done. Since it is proprietary
firmware, in practice only the manufacturer can make new versions –
users can't.

Putting these points together, we can tolerate non-free phone network
firmware provided new versions of it won't be loaded, it can't take
control of the main computer, and it can only communicate when and as
the free operating system chooses to let it communicate. In other
words, it has to be equivalent to circuitry, and that circuitry must
not be malicious. There is no obstacle to building an Android phone
which has these characteristics, but we don't know of any.

Recent press coverage of Android has focused on the patent
wars. During 20 years of campaigning for the abolition of software
patents, we have warned such wars could happen. Software patents could
force elimination of features from Android, or even make it
unavailable. (See [endsoftpatents.org][eop] for more information about
why software patents must be abolished.)

[eop]: https://endsoftpatents.org

However, the patent attacks, and Google's responses, are not directly
relevant to the topic of this article: how Android products approach
an ethically system of distribution and how they fall short. This
issue merits the attention of the press too.

Android is a major step towards an ethical, user-controlled,
free-software portable phone, but there is a long way to go. Hackers
are working on [Replicant][replicant], but it's a big job to support a
new phone model, and there remains the problem of the firmware. Even
though the Android phones of today are considerably less bad than
Apple or Windows smartphones, they cannot be said to respect your
freedom.

[replicant]: https://replicant.us

Copyright 2011 Richard Stallman. Released under the [Creative Commons
Attribution Noderivs 3.0 licence][cc].

[cc]: http://creativecommons.org/licenses/by-nd/3.0
