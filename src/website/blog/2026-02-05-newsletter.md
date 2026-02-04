---
slug: 2026-02-05-february-oai-newsletter
publication-date: 2026-02-05
author: Chris Wood
---

# OpenAPI Initiative Newsletter – February 2025

Welcome to the OpenAPI Initiative (OAI) February 2025 newsletter!

This is our first newsletter of 2026, and there is already plenty to share from
the OAI community.

### Initiative News

We've made a great start to 2026 in the Overlay world with completion of version
1.1.0 of the
[Overlay Specification](https://spec.openapis.org/overlay/v1.1.0.html). Version
1.1.0 brings several new features, including a new `copy` property for the
Action Object, which can be used to copy or move an element in the OpenAPI
document. This property is great for operations where you may already have a
source-of-truth embedded in part of your API description, and want to use it
across all operations. For example, you might implement a `default` Response
Object and wish to copy it to all Operation responses to give more consistency for API
consumers.

Other improvements include the ability to `update` primitive values - strings,
integers, and so on - rather than updating the parent object, making Overlay
documents more concise and easier to manage. The specification has also been
updated for full compliance with
[RFC 9535](https://www.rfc-editor.org/rfc/rfc9535), to ensure tooling makers are
creating Overlay tools through guidance that is fully compatible with the latest
JSONPath standards.

To learn more about upgrading, use this
[helpful guide](https://learn.openapis.org/upgrading/overlay-v1.0-to-v1.1.html).
As always, new versions of our specifications are nothing without our community
of contributors, so a _*huge*_ thanks to [Vincent Biret](https://linkedin.com/),
[Lorna Mitchell](https://linkedin.com/), [Ralf Handl](https://linkedin.com/),
and [Michael Kistler](https://linkedin.com/) for contributions, reviews, and
support.

The
[Moonwalk Special Interest Group](https://github.com/OAI/sig-moonwalk/discussions)
(SIG) has also entered 2026 with a new focus. The SIG will continue to explore
concepts that go beyond the current OpenAPI v3 Specification, with a particular
focus in the first six months of 2026 on how OpenAPI relates to large language
models (LLMs) as a new class of API clients. The groups aims to investigate what
additional metadata or structural information might be needed in OpenAPI
documents to make them more “agent-ready” for LLM use, including capability
discovery and intent signaling. Several open questions are being posed,
including around surfacing capabilities, grouping functionality for agents, and
optimizing descriptions for LLM-based workflows. You can find the full scope of
this initiative [here](https://github.com/OAI/sig-moonwalk/discussions/219).

As always, initiatives as important as this do not create themselves (whatever
the capabilities of AI), so the Moonwalk SIG is looking for new contributors and
hosts to help in this important work.

### Events News

The end of last year saw our final event of the year, the Future of Software
Technologies (FOST) - forever known as Apidays - Paris conference. The event
attracted a huge number of delegates, speakers, and exhibiters, with APIs still
obviously the key theme, but the role of AI, standards such as MCP, AI and
agentic security, and the intersection between agents and APIs being key talking
points throughout.

OAI hosted our own sub-conference, hosted by
[Erik Wilde](https://www.linkedin.com/in/erikwilde/) and
[Frank Kilcommins](https://www.linkedin.com/in/frank-kilcommins/) with a stellar
line-up from the OAI community and huge interest from the community with a
packed conference room for most sessions. We saw speakers such as
[Emmanuel Paraskakis](https://www.linkedin.com/in/emmanuelparaskakis/) talk
about API design in the context of AI-based design workflows,
[Marjukka Niinioja](https://www.linkedin.com/in/marjukkaniinioja/) describe how
to embed OpenAPI into daily workflows using Lean principles to eliminate API
delivery waste, and
[Dimitri van Hees](https://www.linkedin.com/in/dimitrivanhees/) give an overview
of the Dutch Government API developer portal and their OpenAPI-first approach
for public sector APIs.

This year we'll be keeping our focus on our successful partnership with FOST
whilst continuing to develop new relationships with other conferences. To that
end our first conference of the year is the OpenAPI Summit at
[DeveloperWeek, San Jose](https://www.developerweek.com/conference/openapi-summit/),
with a full day of speakers focusing on all things OAI and AI. We have
[Henry Andrews](https://github.com/handrews) providing an overview of v3.2 of
OpenAPI, [Sumit Amar](https://www.linkedin.com/in/samar/) focusing on using AI
tools like Copilot and Cursor to automate API design, development, testing, and
observability, and
[Kuldeepak Angrish](https://www.linkedin.com/in/kuldeepakangrish/) and
[Budha Bhattacharya](https://www.linkedin.com/in/budha-b/) discussing how API
standards and governance create the foundation for AI-readiness before
implementing LLMs or MCP. Head over to our dedicated
[Events site](https://conference.openapis.org/) for more details.

We also have Apidays Singapore, New York, and Munich - and of course Paris -
already lined-up for this year. Stay tuned the newsletter and updated on our
Events site and
[LinkedIn page](https://www.linkedin.com/company/open-api-initiative) for
details as they are finalized!

### Ecosystem Spotlight: Jentic AI-Readiness Scorecard

The Ecosystem Spotlight in this newsletter is provided by
[Jentic](https://jentic.com), an OAI member who leverages both OpenAPI and
Arazzo to provide deterministic and reliable agentic workflows.

_As AI agents become first-class API consumers, a question emerges that linters
can't answer: can an agent actually reason about this API, and use it safely?_

_Jentic's AI-Readiness Scorecard addresses the gap between specification
validity and machine usability. A syntactically correct OpenAPI document
guarantees grammar conformance, not that an agent can interpret intent,
construct valid requests, or handle errors gracefully. Developers compensate for
ambiguity through trial and error; agents either halt or worse, proceed with
confident but incorrect assumptions._

_The scorecard evaluates APIs across six dimensions: foundational compliance,
developer experience, AI interpretability, agent usability, security, and
discoverability. Each dimension produces rich diagnostics that pinpoint exactly
where improvements yield the highest gains for both human developers and AI
agents. Analysis of 1,500+ APIs revealed consistent obstacles: missing server
definitions, authentication buried in prose rather than the spec, sparse or
contradictory examples, and broken schema references._

_"AI systems don't just scan API descriptions; they must interpret, reason, and
act on them reliably," notes Frank Kilcommins, Head of Enterprise Architecture
at Jentic and co-author of the Arazzo Specification. "The scorecard provides
concrete benchmarks and rich diagnostics on score breakdowns, so you know where
you are and what investments will return the most reward. We're building
automatic improvement capabilities leveraging the Overlay specification, helping
teams move from insights to actionable fixes."_

_You can learn more about the scoring framework, and/or try it for free with
your own APIs at https://jentic.com/scorecard._

### The Outlook for 2026

2026 promises to be another exciting year for OAI, with the growing opportunity
of specification updates, collaboration with industry verticals and software
foundations who rely on OAI specifications, and the exploration into greater
compatibility with AI and agentic tooling. As ever, we are always on the lookout
for new members, so if you are thinking of getting involved, becoming a member is
one way of contributing to the work OAI does. Head over to the
[membership page](https://www.openapis.org/membershipjoin) on our website to
find out more.

Thank you for reading our newsletter. As always, we welcome suggestions on how
we can improve it or bring you information that can help make the most of how
you use specifications published by OAI. Please get in touch on the
[Outreach channel](https://open-api.slack.com/archives/C0KM0KXU6) on Slack if
you would like to work with us to tell your story, to feature in the Ecosystem
Spotlight section, or get involved with any of the initiatives described above.
We’d really like to hear from organizations, tooling makers, or community
members who have success stories to tell, so we can celebrate their successes on
the blog.

Until next time!
