---
slug: 2026-03-03-community-hero-vincent-biret
publication-date: 2026-03-03
author: Chris Wood
---

# OpenAPI Community Hero - Vincent Biret

_Welcome to our next Community Hero! After his recent efforts in contributing to
Overlay v1.1.0, we spoke to Vincent Biret._

_Vincent is a Principal Software Developer at Microsoft AI Foundry, and
previously worked on Microsoft Graph. He is a long time open source contributor,
international public speaker, and is passionate about developer experience._

_Vincent gave us his thoughts on the Overlay, the Open Initiative specifications
in general, and why being involved in contributing to the specifications is so
valuable._

### What drives your interest and involvement in the OpenAPI Specification?

Participation in the OpenAPI initiative is a growing opportunity. It also
enables so much of the work I do at Microsoft. And I’m a long believer of the
“contribute back to the things you’re using” model.

About 5 years ago, I started to work on a client code generator, Kiota, which
meant I needed to learn a lot about the OpenAPI Specification. The TDC felt like
a “natural place” for me to learn was to sit (at first quietly). This call felt
welcoming and taught me a lot about “how standards work, and who are the people
behind it”. I gradually felt comfortable contributing back.

Thanks to the help of many others, some of them featured in this blog series,
I’ve been able to make meaningful contributions to OpenAPI 3.2.0, and lately to
Overlays as well.

### The OpenAPI Initiative is now a multi-specification organisation. How do you see the project changing now that we deliver more specifications to the API community?

Before getting involved in the OpenAPI initiative, I didn't suspect how much
work and coordination goes into standards authoring. The bigger the standard,
the more work required to put together a new version. And that growth is not
linear.

The size of the standard also impacts the “consumer” side, implementers need to
keep more context in mind, users require more effort to discover any given
feature, etc…

There is a general recognition among the regular contributors that we can move
faster with a set of “dedicated and interconnected specifications” rather than a
monolithic one. This structure unlocks additional value for consumers through
better focus and clarity, faster releases with more features, easiness to
implement, etc…

A clear demonstration of this approach works:

About 2 years ago, the main repository had about 1000 open issues, this was not
manageable. Now we’re at about 100. Thanks to the hard work of
[Lorna](https://www.linkedin.com/in/lornajane/),
[Henry](https://github.com/handrews) and others, some of those issues were
“grouped by problem areas” into Arazzo or Overlays. Those issues were then
handled by dedicated teams. This approach facilitated the 3.2.0 release of the
core specification through better focus on the core concerns.

### You recently contributed to v1.1.0 of Overlay. What was your motivation for implementing the new features you provided to the community

I now work on Microsoft AI Foundry, which provides a superset of the REST API
provided by OpenAI. To enable those experiences, we use TypeSpec as a design
language and as a support for a lot of our tooling.

In that context, we need TypeSpec definitions for the OpenAI surface of the API
but we don’t want to handcraft them. After all, we’re talking about
approximately 300 operations, hundreds of models, all of which change weekly.

In our import process, we use Overlays to massage the OpenAPI description OpenAI
provides into something that better fits our needs. At some point we found
ourselves maintaining a lot of “update actions” that contained duplicated
sections from the source description. Those duplicated sections quickly became
stale and unmanageable.

After scanning through the Overlays repository, I quickly noticed this was a
common limitation others were sharing. So not only to enable a better workflow
for my team, but also to give back to the community, I thought I’d propose a
solution to that problem. And thanks to the help of many others, like
[Ralf Handl](https://www.linkedin.com/in/ralfhandl/) and
[Mike Kistler](https://www.linkedin.com/in/michael-kistler/), we finalized the
feature!

This feature, and additional contributions from many others eventually became
version 1.1.0 for everyone to enjoy.

### The Moonwalk SIG continues to look to the future of OpenAPI, and investigate new features that could be of value to our specifications. What are you most excited about as a future feature of any of the specifications?

Although I’m not involved in the Moonwalk SIG (there are only so many hours in a
day), we have a great model here: Moonwalk is the “think tank” for large,
fundamental and long-term concerns that are not addressed today in the
specification. Where possible, some of that thinking gets ported in a 3.X
version.

This approach has many benefits:

- The community gets value sooner than waiting for a big-bang release for years.
- The specification authors get feedback on any solution, leading to a more
  mature iteration in the “big release”.

Beyond this process that feeds features into the minor releases, I’m excited
about a few foundational breaking changes that are needed to enable additional
scenarios:

- The notion of “parameters groups/sets”: today you can’t really express “if you
  provide query parameters X/Y/Z, you’ll get response alpha, but if you provide
  A/B/C, you’ll get beta”. (especially useful when the API provides the ability
  to select fields from the response).
- Better integration with RFC6570 URI template. This will simplify the
  specification a great deal, and enable a more structured approach to code
  generation, etc… This will also solve once and for all ambiguities around
  whether paths might be conflicting or not based on their path
  parameters/constants.
- Maybe new things around how authentication and authorization can be discovered
  by agents/code-generators to enable better automation? This has been an
  historical gap of the specification.
- Maybe support for additional protocols? (we’re started some work with
  webhooks, and in 3.2.0 streaming)
- Maybe better lifecycle information? (read and write only are “left to
  interpretation” today)

(this is just my wishlist, I don’t actually know whether the SIG is working on
any of those things)

### What do you see in the future for the OpenAPI Specification?

Keep in mind that I’ve only been involved (as in more than just using) in the
specification about 3 or 4 years ago, so I might not have sufficient perspective
here to provide an accurate answer.

But from my perspective, it seems to me the OpenAPI Specification is both
charting the course in the API space, and also closely listening to where the
broader IT industry is going.

Right now, the industry has a HUGE focus on the LLM/AI/agentic space. And
OpenAPI fits well in that space because it’s text based, broadly adopted,
mechanically parsable, etc… So I think we’re going to see that at least some of
the investments will cater to that problem space.

Longer term, I think I can see two challenges arise:

This is a lot of work done by people. We need to ensure this work remains
sustainable by supporting the people working (funding etc…). Especially
contributors who are not on the payroll of big corporations like I’m fortunate
to be. All the great additional features in newer versions are only beneficial
if end users are aware of them, and if tooling supports it. We probably have a
lot of work on the advocacy side.

### What other standards developments do you consider particularly significant for the API economy?

I’d like to acknowledge we rest (pun intended) on the shoulders of giants: HTTP,
TLS, TCP/IP, DNS,etc… All of that is infrastructure, and like any infrastructure
it requires ongoing investments to operate safely and at peak efficiency.

Additionally, we’re seeing co-benefits from adopting existing standards as much
as possible in the API space: JSON Schema, RFC 6570 Uri template, RFC 9535
JSONPath query expressions for JSON, and many more. Re-using existing standards
allows us to focus on the additional value we can provide, while unlocking
efficiencies from integrating with existing eco-systems.

I’m also keeping an eye on emerging standards from the AI space: MCP, A2A, UTCP…

### Why should more people like yourself get involved in developing the OpenAPI Initiative specifications?

It’s a tremendous learning opportunity, the community is super nice, there’s
work to do, and giving back (your time, money, etc…) is generally speaking a
nice thing to do. It can seem like a scary new space, but with time and
dedication you’ll get used to it.

I also especially encourage people who are not like me to join, because having
too many "individuals like me” would be a disaster :wink:.

Author: [Vincent Biret](https://www.linkedin.com/in/vincentbiret/)
