The OpenAPI Initiative (OAI) is proud to welcome Apideck as a new member!

Apideck is the first Unified API platform to join OAI, and their membership is reflection of their huge commitment to open source. Alongside joining OAI, Apideck also created and maintains [Portman](https://github.com/apideck-libraries/portman), an open-source library that streamlines API contract testing using OpenAPI definitions.

We caught up with Gertjan De Wilde, Co-founder and CEO of Apideck, to find out more about their motivation for supporting OAI, where OpenAPI, Arazzo, and Overlay fit in their product and architecture, and their outlook for the future as an OAI member.

### Please tell us a bit about your organization and your needs as an API provider in publishing well-described APIs.

[Apideck](https://www.apideck.com/) is a Unified API platform that provides 200+ integrations across multiple categories, including Accounting, HRIS, CRM, and others. We normalize disparate APIs into consistent, predictable interfaces. As the first unified API company to join OAI, we have unique needs: we must maintain consistency across hundreds of different API providers. Well-described APIs using OpenAPI specifications are essential for us to document complex integrations in a standardized way and provide predictable interfaces that developers can trust. Our entire business model hinges on transforming diverse API implementations into a unified, coherent interface with an exceptional developer experience.

### What is the most important factor in your decision to become an OpenAPI Initiative member?

OpenAPI isn't just a specification for us: it's the foundation of our product architecture and business model. Every one of our 200+ unified connectors, every SDK we generate, and every validation we run starts with an OpenAPI contract. It's the backbone that made our entire business possible, and frankly, we wouldn't exist in our current form without it.

That's why joining OAI feels like closing the loop. We've been adopters for years, building on top of this incredible standard. Now it's time to become active contributors: to give back to the ecosystem that enabled everything we've built, and to help shape how the next generation of APIs and AI agents communicate. As standards become increasingly critical in the AI agent revolution, we want to be at the table, ensuring OpenAPI evolves to meet these emerging needs.

### How would you like to see the OpenAPI Specification evolve in the future?

We'd like to see the specification evolve to better support API aggregation, normalization, and unification challenges. As a unified API company, we deal with the full spectrum of API quality and need specifications that can handle complex scenarios. The specification should also prioritize AI-readiness with enhanced semantic clarity about what each API operation actually does, making it easier for AI agents to understand and interact with APIs programmatically.

### Do you use Arazzo, and if so how important is Arazzo's development in expanding how APIs are described?

Arazzo's development for orchestrating complex multi-API workflows is particularly relevant to us as a unified API company. When you're normalizing hundreds of APIs across dozens of categories, workflow orchestration becomes critical. We're already putting Arazzo to work: using it to auto-generate tests for our SDKs across 6 languages, ensuring that our implementations handle multi-step workflows correctly and consistently.

We see Arazzo as an important evolution in describing not just individual APIs, but how they work together in real-world integration scenarios. This matters even more in the context of AI agents, which need to chain multiple API calls together to accomplish complex tasks. Having a standard way to describe these orchestrations will be essential for both human developers and autonomous agents.

### Do you use Overlay, and if so how important is creating standardized automation languages for OpenAPI descriptions?

Yes, we use Overlay extensively in our SDK generation process. It's become critical for us to inject different SDK examples and generate different flavors of OpenAPI specifications tailored to our various tooling needs. When you're generating SDKs across 6 languages from a single source OpenAPI spec, having a standardized way to apply transformations and customizations is essential.

We're also using Overlay to augment and enrich our API descriptions and documentation: layering in additional context, examples, and metadata without modifying the upstream specifications directly. This separation of concerns is invaluable when you're maintaining 200+ connector specifications that need to stay synchronized with vendor APIs while also being optimized for our unified API layer.

For us, standardized automation languages like Overlay represent the difference between maintainable, scalable tooling and an unmaintainable mess of custom scripts. As OpenAPI becomes the lingua franca for API-first development and AI agent interactions, having robust, standardized ways to transform and augment these descriptions programmatically isn't just important: it's foundational to building reliable automation at scale.

### If you could have one feature included in future versions of the OpenAPI Specification what would it be and why?

It's not really a feature, but we would like to see an official OpenAPI registry comparable to the [MCP server registry](https://github.com/modelcontextprotocol/registry) recently launched. The API ecosystem desperately needs a centralized, authoritative place where developers and AI agents can discover and access OpenAPI specifications. We've actually built our own API search engine, called the [API Tracker](https://apitracker.io/), precisely because this gap exists. An official OpenAPI registry would take this further, providing verified, up-to-date specifications with quality scores, version histories, and standardized authentication patterns. Just as the MCP registry is accelerating AI integrations, an official OpenAPI registry would accelerate API adoption across the entire ecosystem. It would become the single source of truth for both human developers and AI agents looking to integrate with APIs, dramatically reducing the friction in API discovery and integration.

### What role do the OpenAPI Initiative specifications play in the evolution of APIs and AI?

OpenAPI is becoming the standard interface for AI agents to understand and interact with any API. Developers aren't the only ones reading API documentation anymore. AI agents need machine-readable specifications even more than humans do. They require structured, standardized descriptions to navigate authentication flows programmatically, understand what each operation does, and validate if their API calls are correct. Combined with protocols like MCP (Model Context Protocol), OpenAPI specifications enable AI assistants to not just understand but actually execute API calls in real-time.

### Any final thoughts that provide insights on how you use OpenAPI that you feel is of interest to the community?

We've open-sourced [Portman](https://github.com/apideck-libraries/portman), our CLI tool that converts OpenAPI specifications into Postman collections with automated contract testing. With 600+ GitHub stars and 25+ contributors, it shows how OpenAPI can be leveraged beyond documentation to create powerful testing workflows. This demonstrates our belief that open standards and open-source tools reinforce each other. Standards enable better tools, tools validate standards, and the community amplifies the impact of both. We encourage other API companies to not just adopt OpenAPI but to contribute their tools and learnings back to the ecosystem.

_Contributors: [Gertjan De Wilde](https://www.linkedin.com/in/gertjandewilde/), [Kateryna Poryvay](https://www.linkedin.com/in/katerynaporyvay/), [Saurabh Rai](https://www.linkedin.com/in/srbhr/), [Chris Wood](https://www.linkedin.com/in/sensiblewood/)_

---

#### Joining the OpenAPI Initiative

Want to become a member of the OpenAPI Initiative? Find more information [here](https://www.openapis.org/membershipjoin).

While you think about it, please checkout these resources:

- [How to contribute guide](https://www.openapis.org/participate/how-to-contribute).
- Our Specifications [homepage](https://spec.openapis.org/), with the latest versions of [OpenAPI](https://spec.openapis.org/oas/), [Arazzo](https://spec.openapis.org/arazzo/), and [Overlay](https://spec.openapis.org/overlay/).
- OpenAPI Initiative on [GitHub](https://github.com/OAI), where we develop our specifications.

#### About the OpenAPI Initiative

The OpenAPI Initiative was created by a consortium of forward-looking industry experts who recognize the immense value of standardizing on how APIs are described. As an open governance structure under the Linux Foundation, the OAI is focused on creating, evolving and promoting a vendor-neutral description format. The OpenAPI Specification was originally based on the Swagger Specification, donated by SmartBear Software.

The OpenAPI Initiative has grown to a multi-specification that, first and foremost, provides the OpenAPI Specification, the most popular API description language available to API providers and consumers. The OpenAPI Initiative also supports the development of the Arazzo Specification, which caters for complex workflows invoking many APIs, and the Overlay Specification which provides the means to deterministically and reliably update an OpenAPI description through automation.

To learn what OpenAPI can do for you please visit our [What is OpenAPI page](https://www.openapis.org/what-is-openapi).

#### About Linux Foundation

Founded in 2000, the Linux Foundation is supported by more than 1,000 members and is the world’s leading home for collaboration on open source software, open standards, open data, and open hardware. Linux Foundation projects like Linux, Kubernetes, Node.js and more are considered critical to the development of the world’s most important infrastructure. Its development methodology leverages established best practices and addresses the needs of contributors, users and solution providers to create sustainable models for open collaboration. For more information, please visit us at the [Linux Foundation homepage](https://linuxfoundation.org).
