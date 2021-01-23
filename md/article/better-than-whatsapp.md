<!-- pubdate: 20210123 -->

# Better than WhatsApp: Try these Free Software Apps and Services

We recommend using Free Software apps<sup>[1](#fn-1)</sup> like
[Element][1], [Quicksys][2] or [Conversations][3] that connect to Free
Software powered services. These services allow users to choose their
service provider without losing the ability to talk to users of other
providers following the same standard. Free Software ensures users'
freedom and interoperable services ensure there is no vendor lock-in.

[1]: https://element.io
[2]: https://quicksy.im
[3]: https://conversations.im

## Comparison of different apps and services

1. Non-free software client and server + centralization (Example
   WhatsApp): does not respect user's freedom and creates vendor
   lock-in.

2. Free Software client but non-free server + centralization (Example
   Telegram): client software respects freedom, server software does
   not respect freedom and creates vendor lock-in.

3. Free Software client and server + centralization (Example Signal):
   respect user's freedom but creates vendor lock-in.

4. Free Software client and server + federation (Example Matrix and
   Quicksy/XMPP): respects users' freedom (as a user or as a
   community) and no vendor lock-in.

5. Free software client + peer to peer design (Example Briar, Tox):
   respects users' freedom and no vendor lock-in.

![ Comparison of Instant Messengers - Image](/assets/img/ims.png)

## Some basic concepts

[Vendor lock-in][v-li]: Ability to switch service
   is too hard because it requires convincing every contact to move to
   a new service.

[Peer-to-Peer Design][p2p]: Design which enables a user to communicate
with another user directly without involving any service provider in
between. Both parties need to be online at the same time for the
design to work efficiently.

[End-to-End Encryption][e2e]: Only the users involved in a
communication can read the messages.

[v-li]: https://en.wikipedia.org/wiki/Vendor_lock-in
[p2p]: https://en.wikipedia.org/wiki/Peer-to-peer
[e2e]: https://en.wikipedia.org/wiki/End-to-end_encryption

## WhatsApp and other non-free apps

WhatsApp app is a non-free software which does not respect user's
freedom and privacy.  WhatsApp does not provide its users the access
to its source code and actively bans anyone creating a Free Software
app that can connect to WhatsApp service. They claim their app
provides end-to-end encryption, but we cannot verify if they actually
implemented end-to-end encryption without any backdoors (access of app
remotely without user's permission) or loopholes. Being non-free app is
enough to reject WhatsApp so we are not going to talk about other bad
things about WhatsApp.

There are three broad categories of messaging systems with Free
Software apps - Centralized services, Federated services and
Peer-to-Peer systems.

## A. Centralized services

A centralized service is one in which every one is forced to use the
same provider. Setups such as this has many disadvantages such as
vendor lock-in, being more susceptible to back-doors by government,
the whole world getting dependent on a single organization for their
communications. Centralized services also have a single point of
failure. The organization controlling the service can be sold to a
different organization, change or even shut down the operation, set
their own terms of service and privacy policy, [forbid the third-party
apps from connecting to the centralized service][libresignal-issue].

[libresignal-issue]: https://github.com/LibreSignal/LibreSignal/issues/37#issuecomment-217211165

<dl>
  <dt><strong>Telegram</strong></dt>
  <dd>
    <p><strong>Pros</strong>: Compared to WhatsApp, Telegram provides
    Free Software app which means end-to-end encryption can be verified
    to be working as claimed.</p>

    <p><a href="https://t2bot.io/telegram">Allows
    bots and bridges to connect to other services</a> making it possible
    to participate in Telegram group chats without using Telegram.</p>

    <p><strong>Cons</strong>: Free software app is often not enough
    to provide full control over your communications. For example,
    Telegram's apps (Android, desktop, iOS) are free software but still
    the service is centralized like WhatsApp. So only Telegram's app
    respects your freedom but not the service.</p>

    <p>There is no end-to-end encryption by
    default in Telegram and messages in groups are not encrypted.</p>

    <p>Needs phone number for signing up.</p>

    <p><strong>Summary</strong>: We gained Free Software app and
    bridges but lost end-to-end encryption by default.</p>
   </dd>

   <dt><strong>Signal</strong></dt>
   <dd>
      <p><strong>Pros</strong>: Signal app is Free Software like
      Telegram, and in comparison to Telegram it offers server software
      also as Free Software which makes it better than Telegram.</p>

      <p>End to end encryption is enabled by default and groups
      chats are also encrypted.</p>

      <p>Minimal
      <a href="https://www.eff.org/deeplinks/2013/06/why-metadata-matters">
      metadata</a> <a href="https://signal.org/blog/sealed-sender">
      collected on the server</a>.</p>

      <p><strong>Cons</strong>: Even though you are allowed to setup
      Signal service yourself, the users of your service will not be able
      to talk to users of official Signal server, making it practically a
      vendor lock-in.</p>

      <p>Needs phone number for signing up.</p>

      <p><strong>Summary</strong>: Signal is better than WhatsApp and
      Telegram.</p>
   </dd>
</dl>

## B. Federated services

A federated system is a collection of independent service providers
which can communicate with each other. Federation is important to take
full control of your communications.
You can choose a trusted provider or be a service provider
yourself. No single entity can force their terms on users.
Examples of federated systems are mobile phones, emails, matrix , XMPP
etc. For example, you can buy a SIM card from any mobile service
provider and talk or send SMS to subscribers of other
providers. Similarly, you can create an email account with any service
provider and send emails to people who are registered with a different
email provider.

<dl>
    <dt><strong>Quicksy</strong></dt>
    <dd>
       <p><strong>Pros</strong>: Federated with XMPP, Control over the
        policies of the services, switch to any XMPP
        provider without losing ability to talk to all
        your Quicksy contacts.</p>

       <p>End to end encryption is enabled by
        default and group chats are also encrypted
        by default.</p>

       <p><strong>Cons</strong>: Needs phone number for signing up</p>

       <p><strong>Summary</strong>: Quicksy is better than Signal
        because of its federated design.</p>
    </dd>

    <dt><strong>XMPP via apps like Conversations, Dino</strong></dt>
    <dd>
      <p><strong>Pros</strong>: In addition to all pros of Quicksy,
      the phone number/email is not mandatory for an account. If you
      self-host, metadata retention is under your control.</p>

      <p><strong>Cons</strong>:The process of choosing a service
       provider and creating an account can appear to be difficult
       since it may be unfamiliar, no
       automatic contact discovery.</p>
    </dd>

    <dt><strong>Matrix via apps like Element, FluffyChat</strong></dt>
    <dd>
       <p><strong>Pros</strong>: In addition to all pros of XMPP,
       Matrix asks your permission before you are added to a personal
       chat or added to a group chat.</p>

       <p><strong>Cons</strong>: The process of choosing a service
       provider and creating an account can appear to be difficult
       since it may be unfamiliar, no automatic contact discovery.</p>

       <p><strong>Summary</strong>: XMPP/Matrix is better than Quicksy
       from perspective of privacy and freedom at the cost of a bit
       inconvenience of creating accounts and finding other users
       automatically.</p>

       <p><strong>Note</strong>: Since XMPP/Matrix allows you to have
       your choice of apps instead of the ones mentioned above, please
       chose apps which support end to end encryption
       (<a href="https://omemo.top">OMEMO</a> for XMPP). The choices we
       mentioned have end to end encryption by default.</p>
    </dd>
</dl>

### C. Peer-to-Peer (P2P) systems

Peer-to-peer instant messengers can talk directly without requiring
any servers. Examples are [Briar][briar], [Tox][tox] and [GNU
Jami][jami], etc. The messages are end-to-encrypted and are stored
only locally in the devices since there are no servers involved. There
are no servers that could intercept your communications, so it gives
you the ultimate privacy and freedom. To exchange messages, both peers
need to be online, which might be a bit inconvenient.

[briar]: https://briarproject.org
[tox]: https://tox.chat
[jami]: https://jami.net

## Conclusion

We recommend you to choose any federated system or peer-to-peer
messenger according to your use-case so that you get full control of
your communications, freedom and privacy. It is very important to
reject proprietary services like WhatsApp which takes freedom away
from the user.  [FSF India][fsfi], [FSCI][fsci] or other volunteer-run
organization in India would be glad to extend support to anyone
needing more details on undergoing such a shift.

[fsfi]: /contact
[fsci]: https://fsci.in/#join-us

## Footnotes

1. Any non-free app controls the user while [free software app is
  controlled by its users][free-sw]. When we are talking about free
  software, we not talking about price, we are concerned about
  freedom.<span id="fn-1"></span>

[free-sw]: https://www.gnu.org/philosophy/free-sw.en.html

---

The "Comparison of Instant Messengers" infographic &mdash; Copyright ©
2021 Riya Sawant. It is licensed under the [Creative Commons
Attribution-ShareAlike 4.0 International license][cc-by-sa].

[cc-by-sa]: https://creativecommons.org/licenses/by-sa/4.0
