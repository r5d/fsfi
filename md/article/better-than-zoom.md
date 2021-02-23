<!-- pubdate: 20210217 -->

# Better than Zoom and Google Meet: Try these Free Software powered video conferencing apps and services

We recommend you to use [free software][fw] powered video conferencing
software like [Jitsi][j] and [BigBlueButton][bbb]. Since they are free
software, the software is under user's control, and they give the user
the freedom to run their own server which gives users full control
over their communications.

[fw]: https://www.gnu.org/philosophy/free-sw
[j]: https://jitsi.org
[bbb]: https://bigbluebutton.org

It is entirely possible to run large conferences online using free
software. The FSF hosted its annual [LibrePlanet
2020][lp20-livestream] and the [FSF 35th anniversary event][fsf35]
entirely online using free software and [RYF][ryf] hardware. The
LibrePlanet conference has been live streamed to a worldwide audience
[since 2014][lp14]. FOSDEM 2021 [was hosted online to an audience of
over 30K exclusively using free software][matrix-fosdem].

[lp20-livestream]: https://www.fsf.org/blogs/community/how-to-livestream-a-conference-in-just-under-a-week
[fsf35]: https://www.fsf.org/blogs/community/join-the-fsf-for-an-online-birthday-celebration-on-friday-october-9th
[ryf]: https://ryf.fsf.org
[lp14]: https://www.fsf.org/blogs/community/new-highs-for-libreplanet
[matrix-fosdem]: https://matrix.org/blog/2021/02/15/how-we-hosted-fosdem-2021-on-matrix

## Problems with proprietary videoconferencing systems

In the pandemic time, our communications are being held via nonfree
video conferencing software like Zoom, Google Meet etc.<sup>[1](#fr)</sup>
Hosting video conferencing via nonfree software gives away control of
our communications.

Video communications on Zoom are done via Zoom's central server which
mistreats users in various ways such as [snooping on users][ia-vice]
and [shutting down accounts of activists][guardian]. Zoom also
[censored an event with Palestinian activist Leila Khaled][ti] and
other events criticizing its censorship. A Zoom executive [reported on
users to China][wp], and snooped on meetings.  If they discussed the
Tien An Men Square massacre, he terminated the meetings and the
participants' accounts, on the orders of China. What made it possible
is that Zoom's design lets staff snoop on every conversation as it
passes through the server.  Further, [Zoom has done a lousy job in
protecting your privacy][cl].

[ia-vice]: https://web.archive.org/web/20210104084812/https://www.vice.com/en/article/k7e599/zoom-ios-app-sends-data-to-facebook-even-if-you-dont-have-a-facebook-account
[guardian]: https://www.theguardian.com/technology/2020/jun/11/zoom-shuts-account-of-us-based-rights-group-after-tiananmen-anniversary-meeting
[ti]: https://theintercept.com/2020/11/14/zoom-censorship-leila-khaled-palestine/
[wp]: https://www.washingtonpost.com/technology/2020/12/18/zoom-helped-china-surveillance
[cl]: https://citizenlab.ca/2020/04/move-fast-roll-your-own-crypto-a-quick-look-at-the-confidentiality-of-zoom-meetings

Surveillance and censorship are the consequences of the power Zoom has
over its users because of its nonfree software and centralized
server. It is Zoom's unjust power over their users that we
oppose. This power bring users at the mercy of the entity (Zoom in
this case) providing the service. The same is true for other nonfree
conferencing systems like Google Meet, Microsoft Teams,
[Skype][skype], etc.

[skype]: https://stallman.org/skype.html

Nonfree programs should never be trusted for privacy even if they say
that the communications are end-to-end encrypted. It could send the
unencrypted version to the owner of the software when asked, bypassing
the encryption. A company that sold encryption systems to 100
countries was controlled by US and German intelligence, [and the
equipment spied on the governments that used it][guardian-crypto-spy]
which means that you should never trust a proprietary encryption
program to protect your privacy .  Therefore, we suggest you to reject
any nonfree/proprietary software.

[guardian-crypto-spy]: https://www.theguardian.com/us-news/2020/feb/11/crypto-ag-cia-bnd-germany-intelligence-report

## How can free software powered video-conferencing systems solve the problem?

If the users communicate using free software installed in a server
controlled by the users or a server run by a trusted service provider,
they get full control over their communications. This gives them
control over the policies of the service and data collection.  With
Free Software like Jitsi and BigBlueButton, you have a choice of
service providers, and you are not forced to host your video meetings
on any particular server, say, Jitsi's central server. You can also
host the service in countries with better Free Speech laws instead of
forced to follow only Chinese law, in case of Zoom. This is like
dissenters taking refuge in other countries to avoid persecution by
oppressive governments.

Jitsi instances usually have maximum capacity of 70 participants at a
time.  A list of Jitsi instances can be found at
<https://jitsi.github.io/handbook/docs/community/community-instances> and
a list of BigBlueButton instances can be found at
<https://wiki.chatons.org/doku.php/la_visio-conference_avec_big_blue_button>. We
did not try all the instances listed in these links, this is just a
list for users to try different instances. We suggest you to read the
policies of the servers before hosting your communications there.

Autistici's Jitsi instance <https://vc.autistici.org/> supports
recording without using Dropbox or any other nonfree software service 
(other Jitsi instances usually require a Dropbox account) and
live-stream without using YouTube (other services usually support 
live-streaming with YouTube only) on their own server. To record your
meeting on Autsitici's server, you can click 'Start Recording' when
you want to start and after 'Stop Recording', you will be sent a link
in the Jitsi chat, and you can download the recording in your device.

Jitsi instances like 8x8.vc has an Indian dial in (not toll-free but a
number in Mumbai) number to join the audio conference. So people with 
unlimited talk time but not a good internet connection can also join these.

[tube.tchncs.de][tchncs.de] and other PeerTube instances that support
live-streaming can be another option.
[joinpeertube.org/instances][jpt] has a list of PeerTube instances and
you can filter the list by choosing 'Video maker' profile and 'Yes' to
'And do live streams' option. Apps like [NewPipe][np] and Fedilab
support watching PeerTube videos and live streams. [OBS][obs] can be
used to stream classes live.

[tchncs.de]: https://tube.tchncs.de
[jpt]: https://joinpeertube.org/instances
[np]: https://newpipe.net
[obs]: https://obsproject.com

BigBlueButton instances generally have more capacity than Jitsi
instances and instances like [meet.nixnet.services][bbb-nn] can scale
up to 270+. Mixed approach of live-streaming and using separate text
chat for questions can increase the limits.  BigBlueButton supports
white board, presentations, live-streaming on YouTube. We suggest you
to avoid live-stream on YouTube.  BigBlueButton doesn't need any app
on mobiles to work, people can simply join via any web browser.
[Chiguru also runs a BigBlueButton server][bbb-cg] especially for
online classes and includes paid plans according to your needs.

[bbb-nn]: https://meet.nixnet.services
[bbb-cg]: https://classmeet.chiguru.tech

## Conferences conducted using only free software

In the pandemic time, we also saw the successful organization of
conferences using only free software.  [FSCI][fsci] and [Free Software
Foundation of India][fsfi] conducted the [Free Software Camp][c-fsfi]
entirely [using Big Blue Button][c-fsfi-bbb]. Conferences
[DebConf][debconf20] and [MiniDebConf Online India 2021][mdebconf21]
were also held using Jitsi and Vogol for live-streaming the conference
and Etherpad + IRC chat were used by the audience to ask
questions. The [Free Software Foundation][fsf] conducted their 2020
annual LibrePlanet conference online [without the use of any
nonfree/proprietary software][fsf-lp2020]. The FOSDEM 2021 conference
was [conducted using only free software which hosted 30,000
attendees][matrix-fosdem] which shows that there is absolutely no
reason that [any online conference should require proprietary
software][sfc-no-zoom]<sup>[α](#fn-1)</sup>. Any organization seeking
to run a conference can either hire their own people, hire some of the
people who organized FOSDEM to deploy the technology for you. If they
can host their conference using only free software, other
organizations can do it too.

[fsci]: https://fsci.in
[fsfi]: https://fsf.org.in
[c-fsfi]: https://camp.fsf.org.in
[c-fsfi-bbb]: https://videos.fsci.in/accounts/fscamp/videos
[debconf20]: https://debconf20.debconf.org/about/debconf
[mdebconf21]: https://wiki.debian.org/DebianIndia/MiniDebConfOnlineIndia2021
[fsf]: https://fsf.org
[fsf-lp2020]: https://www.fsf.org/blogs/community/libreplanet-2020-in-person-component-canceled-but-well-see-you-online
[sfc-no-zoom]: https://sfconservancy.org/blog/2021/feb/08/just-say-no-to-zoom

## Educational Institutes should switch to free software

Educational institutes all over the world are conducting
lectures/webinars via nonfree software.  We suggest educational
institutes to adopt free software alternatives like Jitsi,
BigBlueButton and avoid nonfree software for lectures and
conferences. Conferences can be held using only free software similar
to the above mentioned conferences. Educational institutes have a
responsibility towards their students and teachers to respect their
freedom and privacy. Students should not be forced to give away their
freedom and privacy to attend lectures, webinars to build their
career. 

We urge teachers to help their students in [resisting against Zoom][resist] or other proprietary software for online teaching. 

If you are from an educational institute, and need help in switching
to free software services which respect your freedom, we will be glad
to help you. Please do not [hesitate to contact us in this
regard][fsfi-contact].

[resist]: https://www.gnu.org/education/teachers-help-students-resist-zoom.html
[fsfi-contact]: https://fsf.org.in/contact

## Ways in which students can resist

To show rejection of nonfree software, students can resist in various
ways.  Students can get in touch with each other and send collective
letters to teachers or their administration to create awareness about
the problems that proprietary software poses. To raise awareness, they
can share this article.  They can ask their teachers to make
recordings from the Zoom calls and post the recordings where they can
download them later. We suggest free software like upload.disroot.org
or PeerTube for sharing video lectures. Or else ask teachers to post
the pertinent visual materials so that students can get them before
the class, and they can record the audio themselves. That way they can
attend the classes without running any nonfree program.

Students can also set up kludges to avoid running nonfree video chat
programs. For instance, the teacher (or one student) could point a
camera at a screen showing the Zoom call, and stream that camera and
mic to the students who want to stay off Zoom. There can also be a
kludge for them to speak and send their voice to the Zoom call.

## How to start and join a meeting via Jitsi and BigBlueButton?

[Find a Jitsi service that suits your needs][chatons-j] and create a
room with a random name or a name that you can remember. Share the
meeting link with attendees.  Joining a Jitsi meeting is as easy as
clicking a link and loading it in your browser(Recent versions of
Chromium and Firefox) or Android or iOS Jitsi Meet apps and does not
require creating any accounts. Jitsi meetings can also be password
protected so that only invited attendees can join.

[Find a BigBlueButton instance that suits your needs][chatons-bbb] and
sign up for an account. Once you are logged in, you can create rooms
and share the links with attendees. Joining a BigBlueButton meeting is
as easy as clicking a link and loading it in your browser (Recent
versions of Chromium and Firefox) either on your laptop/desktop or on
your mobile.

[chatons-j]: https://jitsi.github.io/handbook/docs/community/community-instances
[chatons-bbb]: https://wiki.chatons.org/doku.php/la_visio-conference_avec_big_blue_button

## Need help? Contact us

If you would like to switch to free software powered services like
Jitsi and BigBlueButton, and you need help in this matter, feel free
to contact us at [fsf.org.in/contact][fsfi-contact]. We would be very
glad to help you.

## Further reading

1. <span id="fr-1"></span>Members of UK parliament were [forced to use Zoom in
   order to vote][fr-1].

2. <span id="fr-2"></span>Americans are getting evicted because [they could not attend a
   court hearing carried out via Zoom][fr-2].

3. <span id="fr-3"></span>[Why Schools Should Exclusively Use Free
   Software][fr-3].

4. <span id="fr-4"></span>Zoom [plans to block and suspend users based
   on their location][fr-4].  This practice is both surveillance and
   censorship. It also shows how ready the company is to comply with
   Chinese orders in violating basic human rights.

5. <span id="fr-5"></span>Employers [are imposing nonfree
   video conferencing systems on their workers to put them under
   surveillance][fr-5].

6. <span id="fr-6"></span>Government schools in Delhi are [imposing
   proprietary software Zoom on students for attending
   lectures][fr-6].

[fr-1]: https://www.theguardian.com/politics/2020/apr/20/mps-expected-approve-plans-virtual-parliament
[fr-2]: https://www.npr.org/2020/06/19/880859109/zoom-call-eviction-hearings-they-ll-throw-everything-i-have-out-on-the-street
[fr-3]: https://www.gnu.org/education/edu-schools.html
[fr-4]: https://www.theverge.com/2020/6/12/21288995/zoom-blocking-feature-chinese-government-censorship
[fr-5]: https://www.theguardian.com/world/2020/sep/27/shirking-from-home-staff-feel-the-heat-as-bosses-ramp-up-remote-surveillance
[fr-6]: https://theprint.in/india/education/delhi-govt-starts-online-lessons-for-class-12-but-only-a-handful-of-students-are-logging-in/397880

- - -

α. <span id="fn-1"></span>The article uses the term 'FOSS' which
stands for 'Free and Open-Source Software' which we avoid because we
stand for freedom and therefore prefer 'free software' over 'FOSS'.
