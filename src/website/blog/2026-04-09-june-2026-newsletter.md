---
slug: openapi-initiative-newsletter-june-2026
publication-date: 2026-06-09
author: Chris Wood
---

# OpenAPI Initiative Newsletter – June 2026

Welcome to the OpenAPI Initiative (OAI) June 2026 newsletter!

We are excited to bring all the latest specification, events, and community news
across the OpenAPI, Arazzo, and Overlay specifications and the wider community.

### OpenAPI Specification

The OpenAPI Specification (OAS) team is evaluating changes for v3.3, with a
number of items in scope.

Firstly, the team is investigating a concept called "Standardized API Features",
or SAFs. As the name suggests SAFs are intended to provide a mechanism for
characterizing features of OAS in two ways, namely: the feature has standardised
behavior defined by an external specification (such as an RFC), and it requires
an exception to the normal rules for describing API operations in OAS. Cookies
are the clearest example: their behavior is defined by RFC 6265, and they need
special treatment in OAS because the Cookie header cannot simply be described
using the standard parameter approach.

The SAF concept is therefore intended to help the specification community learn
from past design mistakes and reason more clearly about which API features
deserve first-class, dedicated treatment in the Specification versus those that
can be described generically. The SAF concept therefore provides significant
affordances for the development of new features in both v3.3 and all future
versions.

Alongside and supported by the work on SAFs v3.3 promises to be one focused on
API Security, with investigations already taking place on supporting the
[FAPI 2.0 Security Profile](https://openid.net/specs/fapi-security-profile-2_0-final.html)
and
[Grant Negotiation and Authorization Protocol](https://datatracker.ietf.org/doc/html/rfc9635)
(GNAP) available. Discussions have already
[started](https://github.com/OAI/OpenAPI-Specification/discussions/5304) on what
a Security Profile might look like, and the work on SAF will help shape how this
is introduced.

### Arazzo Specification

The Arazzo Specification v1.1.0 has also been
[released](https://www.openapis.org/blog/2026/05/19/announcing-arazzo-specification-1-1).
This is a minor release built on the 1.0 foundation, with the headline addition
being AsyncAPI support. For the first time, a single Arazzo document can
describe workflows that span both synchronous HTTP operations and event-driven
asynchronous APIs.

Other significant additions include fully supported chained workflow execution
(enabling reusable sub-workflows such as token refresh flows), a new Selector
Object for fine-grained data extraction via JSONPath, XPath, or JSON Pointer,
and alignment with OpenAPI 3.2's querystring option on the Parameter Object. The
release also tightens specification precision with a complete ABNF grammar for
runtime expressions, formally defined truthy/falsy evaluation semantics, and a
new $self field providing a canonical URI for unambiguous multi-document
referencing.

Existing 1.0.x documents remain valid without structural changes, and the
roadmap ahead targets gRPC, GraphQL, SOAP, MCP, and A2A step types,
actor-in-loop support, transformer/function support, and loops.

### Overlay Specification

2026 has already seen the release of Overlay v1.1.0, which we covered in our
February newsletter. A release v1.2.0 is currently in the works, which will
implement **Reusable Actions**.

Reusable Actions are important because they vastly increase the means for
creating Overlay actions that can be used in multiple places, both within and
across documents. As a framework for implementing automated pipelines this
feature is key, as it ensures that Overlay documents provide the full corpus of
knowledge for the pipeline.

The release date for v1.2.0 is yet to be fixed, but we'll keep you up to date
with news on the release.

### Getting Involved

We want to acknowledge the efforts of our specification team members and
community in bringing these releases together. Many hours are spent in ideation,
drafting, and review, and the specifications are always on the lookout for help.

The work on Security Profiles also shows how the involvement of experts across
the industry is tremendously important, and discussions between OAI more widely
and the FAPI Working Group have taken place. This level of community engagement
across different standards bodies is vital in helping OAS, Arazzo, and Overlay
evolve and develop to meet the needs of the ecosystem, especially in supporting
Agents and AI more generally with features that support automation and autonomy.

If you want to get involved - either by helping with the authoring, or bringing
fresh ideas or expertise to the community - you can come and join the
specification meetings for OpenAPI, Arazzo, and Overlay on our
[Community Calendar](https://www.openapis.org/get-involved/about).

### Events News

The OAI Track - led by [Erik Wilde](https://www.linkedin.com/in/erikwilde/) -
has continued to bring exciting and insightful sessions to conferences around
the world, with DeveloperWeek San Jose, and Apidays Singapore and New York
already complete.

The agenda of these events was dominated by the intersection of OpenAPI and
artificial intelligence, with a consistent focus on what it means for an API to
be truly "AI-ready." Speakers like
[Emmanuel Paraskakis](https://www.linkedin.com/in/emmanuelparaskakis/) and
[Kin Lane](https://www.linkedin.com/in/kinlane/) repeatedly returned to the idea
that OpenAPI documents must evolve beyond human-readable documentation to become
machine-actionable contracts that AI agents can discover, reason over, and
execute reliably. A second strong thread was the shift toward spec-first and
API-first development practices, framing the OpenAPI description as the single
source of truth that drives design, code generation, testing, and governance.

Workflow orchestration has also emerged as a distinct concern, with multiple
sessions led by
[Frank Kilcommins](https://www.linkedin.com/in/frank-kilcommins/) exploring how
standards like Arazzo and MCP can extend OpenAPI into the multi-step,
agent-driven interactions that modern AI systems require. Underpinning all of
this was a practical emphasis on tooling and automation and moving from from
AI-assisted API design and automated linting to SDK generation and contract
testing, reflecting an industry moving from manual API development toward highly
automated, standards-driven pipelines.

The busy conference season continues, with
[Apidays Amsterdam](https://www.openapis.org/events/apidays-amersterdam-2026)
and [Apidays Munich](https://www.openapis.org/events/apidays-munich-2026) in
June and July respectively. We'll be continuing with the themes above, so if you
are interested in hearing more about the intersection between OpenAPI and AI, be
sure to make it to the OAI Tracks!

### Ecosystem Spotlight - Interledger Foundation and Open Payments API

The Interledger Foundation SDK Grant program is funding work to improve the
developer experience for the [Open Payments API](https://openpayments.dev/),
which is an open standard for payment interoperability across different
providers, rails, and ecosystems. The SDK Grant program is specifically
interested in making GNAP available in the OpenAPI Specification as a key
affordance to their developer experience goal.

The Interledger Foundation has therefore funded three proposals that advance
both the OpenAPI and Arazzo Specifications while improving the developer
experience for the Open Payments API.

The grantees are:

- [Henry Andrews](https://www.linkedin.com/in/handrews/) is leading work to add
  GNAP as a Security Scheme to the OpenAPI Specification, addressing a gap in
  security description capabilities that matters increasingly for code
  generation and AI agents.
- [Chris Wood](https://linkedin.com/in/sensiblewood) is supporting the GNAP
  implementation, producing a TypeScript version for Microsoft's open-source
  Kiota SDK generator, and updating OAI educational materials to reflect the new
  support.
- [Vincent Biret](https://www.linkedin.com/in/vincentbiret/) is implementing
  Arazzo workflow support in Kiota for C#/.NET as a reference implementation,
  enabling client code to generate higher-level API workflow SDKs directly from
  Arazzo documents.

These three work streams demonstrate how OAI specifications underpin real-world
tooling investment and deliver benefits across the broader web API ecosystem.

### Outreach

Telling and promoting success stories from the community is a big part of what
outreach at OAI aims to achieve. We'd like to hear from you if you would like to
work with us to tell your story, to feature in the Ecosystem Spotlight section,
or get involved with any of the initiatives described above. We’d also really
like to hear from organizations, tooling makers, or community members who have
success stories to tell, so we can celebrate their successes on the blog.

We are also actively investigating new ways of engaging with the community and
especially with OAI members, with office hours and tooling forums to address the
needs of the community more readily.

You can in touch by:

- Using the #outreach channel on
  [Slack](https://open-api.slack.com/archives/C0KM0KXU6).
- Emailing us at [outreach@openapis.org](mailto:outreach@openapis.org).
- Getting in touch at our
  [LinkedIn page](https://www.linkedin.com/company/open-api-initiative).

If you have something to share, be sure to get in touch!

### Finally...

Thank you for reading our newsletter. As always, we welcome suggestions on how
we can improve it or bring you information that can help make the most of how
you use specifications published by OAI.

Until next time!

Contributors: [Chris Wood](https://linkedin.com/in/sensiblewood)
