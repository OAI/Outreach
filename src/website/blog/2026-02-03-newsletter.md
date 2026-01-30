---
slug: 2025-04-12-december-oai-newsletter
publication-date: 2025-04-12
author: Chris Wood
---

# OpenAPI Initiative Newsletter – February 2025

Welcome to the OpenAPI Initiative (OAI) February 2025 newsletter! This is our
first newsletter of 2026, and there is plenty to share on news, happenings, and
events in the OAI community.

### Initiative News

We've made a great start to 2026 with work completing on version 1.1.0 of the
[Overlay Specification](https://spec.openapis.org/overlay/v1.1.0.html). Version
1.1.0 brings several new features, including a new `copy` property for the
Action Object, which can be used to copy or move an element in the OpenAPI
document. This property is great for operations where you may already have a
source-of-truth embedded in part of you API description, and want to use it
across all operations. For example, you might implement a `default` Response
Object and wish to copy it to all Operation responses for consistency for API
consumers.

Other improvements include the ability to `update` primitive values - strings,
integers, and so on - rather than updating the parent object, making Overlay
documents more concise and easier to manage. The specification has also been
updated for full compliance with
[RFC 9535](https://www.rfc-editor.org/rfc/rfc9535), to ensure tooling makers are
creating Overlay tools fully compatible with the latest JSONPath standards.

If you want know more on the upgrade path from v1.0.0 to v1.1.0 you can use this
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
focus in the first 6 months of 2026 on how OpenAPI relates to large language
models (LLMs) as a new class of API clients. The groups aims to investigate what
additional metadata or structural information might be needed in OpenAPI
documents to make them more “agent-ready” for LLM use, including capability
discovery and intent signaling. Several open questions are being posed,
including around surfacing capabilities, grouping functionality for agents, and
optimizing descriptions for LLM-based workflows.

As always, initiatives as important as this do not create themselves (whatever
the capabilities of AI), so the Moonwalk SIG is looking for new contributors and
hosts to help in this important work.

### Events News
