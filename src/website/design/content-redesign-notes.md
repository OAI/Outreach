# Website Layout

This document provides an overview of the content design for the revised openapis.org website.

## Menu

This section provides the content of the menu bar.

### Drop downs

The following are the drop downs we should aim for.

```text
Learn
├── What Is OpenAPI Initiative? (Relocate existing page).
├── [Learn About OAI](https://learn.openapis.org/)
├── [Online Courses](https://training.linuxfoundation.org/full-catalog/?_sf_s=openapi)
Specifications
|
├── [OpenAPI](https://spec.openapis.org/oas)
├── [Arazzo](https://spec.openapis.org/arazzo)
├── [Overlay](https://spec.openapis.org/overlay)
├── [Registries](https://spec.openapis.org/registry/)
Community
├── [Collaborate on Slack](https://communityinviter.com/apps/open-api/openapi)
├── Participate
    ├── [OpenAPI](https://github.com/OAI/OpenAPI-Specification/blob/main/README.md#participation)
    ├── [Arazzo](https://github.com/OAI/Arazzo-Specification?tab=readme-ov-file#getting-involved)
    ├── [Overlay](https://github.com/OAI/Overlay-Specification)
├── Current Members (Relocate existing page)
├── Become a Member (Relocate existing page)
Events
Blog
```

## Homepage

Proposed design notes for homepage.

### Banner

> Looking at the top section of https://graphql.org/ for inspiration here, think the headline section works really well.

Title: API Description Languages for the API Economy.

- Open, language-agnostic API description with the OpenAPI Specification.

- Extend descriptions to multistep API-driven workflows with the Arazzo Specification.

- Automate maintenance and increase efficiency with the Overlay Specification.

The OpenAPI Initiative supports the development of the OpenAPI, Arazzo, and Overlay Specifications, which are trusted by millions of developers when creating, describing and consuming APIs.

### Our Specifications

> These are just rough ideas, to iterate over some content for the page. Ignore the formatting, it's the layout calls to action that are important.

The OpenAPI Initiative is a family of three specifications: OpenAPI, Arazzo, and Overlay.

#### OpenAPI

<div style="display: flex; gap: 1rem;">
  <div style="flex: 1; padding: 1rem;">
    <em>Graphic showing example OpenAPI Description Document<em>
  </div>
  <div style="flex: 1; padding: 1rem;">
    <p>OpenAPI is the foremost API description language available to the API community today, and powers how knowledge of APIs are shared between API creators and the organization that use them. OpenAPI is a rich, vendor and programming language and vendor agnostic language, that reflects how APIs are created and published, and is supported by a huge and vibrant tooling community.</p>
  </div>
  <div>
    <button>Read the docs</button>
  </div>
</div>

#### Arazzo

<div style="display: flex; gap: 1rem;">

  <div style="flex: 1; padding: 1rem;">
    <h2><a href="https://spec.openapis.org/arazzo">Arazzo Specification</a></h2>
  </div>

  <div style="flex: 1; padding: 1rem;">
    <p>OpenAPI is the foremost API description language available to the API community today, and powers how knowledge of APIs are shared between API creators and the organization that use them. OpenAPI is a rich, vendor and programming language and vendor agnostic language, that reflects how APIs are created and published, and is supported by a huge and vibrant tooling community.</p>
  </div>

</div>

### Join the Community!

The OpenAPI Initiative is a not-for-profit organization funded entirely by membership. Our members understand and rely our specifications for this success in the API economy.

_I would suggest we use a 2x2 grid here maybe, to compress the content to shoehorn as much as possible._

_List the follow_

- Join us on Slack
- Join our meetings (link to calendar)
- Upcoming events (link to conference site)
- Latest news (link to blog)

### Become a Member

Want to help fund the future development of OpenAPI Initiative specifications?

[Learn more](###MEMBER LINK###) about becoming a member.

> Just above the footer some means to display member logos - could be a carousel of all members, could be a just the biggest - however we do it, I think it should be equitable i.e. everyone who is a member gets their logo displayed at some point

### Footer

Much of this content will be relocated from existing pages...

- See the Audit Section that provides list of pages to be relocated.

## Audit

This is intended to provide an overview of where pages go from and to.

Not complete, will be gradually updated as this work progresses.

| Page | Location | New Location | Actions | Location |
| --- | --- | --- | --- | --- |
| About | Menu > About > About | Footer > About |  | /about |
| Technical Steering Committee | Menu > About > Technical Steering Committee | Footer > Technical Steering Committee |  | /governance/tsc |
| Code of Conduct Transparency Report | Menu > About > Code of Conduct Transparency Report | Footer > Code of Conduct Transparency Report |  | /governance/coctr |
| _All Specifications Menu Items_ | Menu > Specifications > \* | As per new Menu design | Anything not listed in the Menu section above is removed | N/A |
