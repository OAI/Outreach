Welcome to the OpenAPI Initiative (OAI) September 2025 newsletter! We’ve had a break over the vacation season in the northern hemisphere, but are back to bring you initiative news, information on events and educational resources, and this time round, news of our v3.2 OpenAPI release!

### Initiative News

It goes without saying that the big news - wait, **_enormous_** - news for this edition of the newsletter is two new releases of the OpenAPI Specification! We have a new minor release at [version 3.2.0](https://spec.openapis.org/oas/v3.2.0.html), which has helped us also deliver a patch version of 3.1 at [3.1.2](https://github.com/OAI/OpenAPI-Specification/releases/tag/3.1.2).

#### Versions 3.2.0 Features

Version 3.2.0 brings together a feast of new features including:

- A brand new Tag Object structure, providing greater flexibility and richness in tagging objects.
- Support for the `QUERY` HTTP method for implementing operations searching collections, plus the new `additionalOperations` keyword that allows HTTP methods not included in the Specification to be described.
- Support for streaming data, which is a critical enhancement to support creating well-described APIs across so many use cases, including chat, AI, IoT, and financial services.
- A new `querystring` keyword that allows all query parameters supported by an API to be described through a Schema Object.
- Security Scheme enhancements, including support for OAuth 2.0 Device Authorization Flow and OAuth 2.0 Server Metadata.

You can read more about the enhancement in our [blog post](https://www.openapis.org/blog/2025/09/23/announcing-openapi-v3-2), which includes both links to key resources such as the release itself and our comprehensive migration guide published on our Learn site.

Thanks go to the TSC and all contributors for this release, particularly [Henry Andrews](https://github.com/handrews) and [Lorna Mitchell](https://www.linkedin.com/in/lornajane/) for their significant contributions to getting this version over the line!

#### Moonwalk Update

Back at the start of the year we gave a [status update](https://www.openapis.org/blog/2025/02/05/moonwalk-2025-update) on the progress of Moonwalk: its goals, desired outcomes, and what this Special Interest Group aims to achieve. In that post we said: “_The timeline for Moonwalk reaching a 4.0.0 release remains open-ended_”, and with the release of v3.2.0 what you are actually seeing is the first incremental step of the larger Moonwalk project. Many of the features of v3.2.0 were ideated through Moonwalk, and our focus is now on delivering more backwards-compatible incremental steps in the 3.x line. We will also keep an eye out for problems that show us that we **need** to break compatibility and make a 4.0 release, but we would like to discover that need through community feedback.

Key message is: **Don’t wait for Moonwalk**! Moonwalk is an ideas engine, and feeds the progress on the main development line of the OpenAPI Specification. It may come to pass that there is **never** a v4.0 of OpenAPI. If you were hanging on for v4.0, make the leap to v3.2 now.

### Membership News

We are pleased to welcome new members to the OpenAPI Initiative!

[Jentic](https://jentic.com) joined early 2025. Jentic is building the bridge between the AI World and the API World, providing agents with targeted, repeatable, and efficient workflows. Jentic agents are built on OpenAPI and Arazzo, making these specifications crucial building blocks in the Jentic platform. You can read more in our [interview](https://www.openapis.org/blog/2025/09/26/the-openapi-initiative-welcomes-jentic) with [Erik Wilde](https://www.linkedin.com/in/erikwilde/), who as well as being OAI Ambassador is also Head of Enterprise Strategy at Jentic.

We have also been joined in September by [Apideck](https://www.apideck.com/). Apideck is a Unified API provider, with an API that seeks to simplify integration across different SAAS platforms through one simple integration. [Gertjan De Wilde](https://www.linkedin.com/in/gertjandewilde/) describes their motivation for joining as being _“..time to stand behind the spec that has enabled us to build our company.”_, which is of course fantastic news, and a great motivation for anyone looking for anyone thinking about becoming a member. We are looking forward to bringing you our new member profile on Apideck very soon!

If you are interested in membership we have held two breakfasts at Apidays (New York and London), where we introduce what membership means and take a look at the revised member benefits we are looking to offer. If you want to find out more, please check out our recent post on [LinkedIn](https://www.linkedin.com/feed/update/urn:li:activity:7378728523152388096), which includes our presentation from this event.

### Events News

We have been busy with OAI Track since our last newsletter as event season has picked up again.

[API:World](https://www.openapis.org/events/apiworld-santa-clara-2025) was held in Santa Clara in September, where we were lucky enough to host our own OpenAPI Summit. Organized and hosted by Erik Wilde and [Frank Kilcommins](https://www.linkedin.com/in/frank-kilcommins), the conference kicked off with a workshop held by Erik and Frank that looked at best practices for leveraging OpenAPI and Arazzo when scaling your APIs. This was followed by a full day programme of topics focusing on the MCP ([Emmanuel Paraskakis](https://www.linkedin.com/in/emmanuelparaskakis/)), the role of metadata in building well-connected systems ([Simon Heimler](https://www.linkedin.com/in/simonheimler/)), and building great governance for APIs ([Jeremy Glassenberg](https://www.linkedin.com/in/jglassenberg/)).

[Apidays London](https://www.apidays.global/events/london), whilst not a Summit, still had a host of great talks including an overview of the v3.2.0 release (Lorna Mitchell) and a look at architecting agent-ready infrastructure ([Sean Blanchfield](https://www.linkedin.com/in/seanblanchfield/)).

Last stop for this year will be [Apidays Paris](https://www.apidays.global/events/paris), the flagship Apidays event. Please keep an eye out for updates on our agenda for the OAI Track!

Finally, we’ve started issuing digital badges for attendance at OAI events. Our first badges went to participants at our OSS Mini Summit events in Denver and Amsterdam. Be sure to lookout for events and workshops that issue badges in the future!

### Ecosystem Spotlight

The Ecosystem Spotlight for this edition comes from [Shane O’Connor](https://www.linkedin.com/in/shaneopenapi/), Go to Market Lead at OAI member [Scalar](https://scalar.com/).

Shane highlights the great work Scalar are doing improving parsing time with their OpenAPI parser:

_Scalar has released a modern OpenAPI parser that’s gaining traction for its performance and comprehensive feature set. Written in TypeScript, @scalar/openapi-parser supports OpenAPI 3.1, 3.0 and Swagger 2.0, with support for the newly released OpenAPI 3.2 specification coming very soon. The parser is already trusted by teams at Mintlify & Kong demonstrating its production readiness across diverse use cases, and offering highly significant performance improvements over existing parsers._

_Beyond performance, @scalar/openapi-parser offers a comprehensive utility suite including reference dereferencing with tracking callbacks, document filtering, and automatic upgrading from Swagger 2.0 to OpenAPI 3.1 (soon to be 3.2). What distinguishes this parser is its plugin architecture for handling external references. This architecture enables a crucial differentiator: the parser works seamlessly on both server-side and browser environments, unlike many alternatives that are limited to Node.js. Developers can extend it with custom plugins to fetch definitions from databases, CDNs, or any data source. The onDereference callback provides visibility into schema resolution, invaluable for debugging complex multi-file specifications._

_As OpenAPI documents grow in complexity and with OpenAPI 3.2 bringing new features, having a performant parser that handles everything from legacy Swagger 2.0 to the latest specification becomes critical for maintaining responsive development workflows. Scalar’s parser represents a modern solution that’s actively evolving alongside the OpenAPI specification itself._

If you’d like to contribute to the Ecosystem Spotlight in our next newsletter, please get in touch on the [Outreach channel](https://open-api.slack.com/archives/C0KM0KXU6) on Slack.

### Finally

Thank you for reading our newsletter. As always, we welcome suggestions on how we can improve it or bring you information that can help make the most of how you use specifications published by the OpenAPI Initiative.

Please get in touch on the Outreach channel on Slack if you would like to work with us to tell your story, to feature in the Ecosystem Spotlight section, or get involved with any of the initiatives described above. We’d also like from organizations, tooling makers, or community members on their reaction to our v3.2 release, and to share any stories in their adoption journey.

Until next time!

Contributors: Shane O’Connor, Henry Andrews, [Chris Wood](https://www.linkedin.com/in/sensiblewood).
