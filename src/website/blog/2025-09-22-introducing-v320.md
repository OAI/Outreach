We are delighted and proud to announce the release of v3.2.0 of the OpenAPI Specification!

Our latest minor version brings a host of new features across a number of areas including supported HTTP methods, a new tag structure, support for streaming media types, and a whole lot more!

Here's a quick rundown of the headline features.

### Multipurpose Tags with Nesting

One of the most significant changes, particularly for rendering a graphical view of an OpenAPI description, is the change to the [Tags](https://spec.openapis.org/oas/v3.2.0.html#tag-object) object. The new Tag Object structure introduces `summary` for short descriptions, `parent` for nesting, and `kind` for classifying Tags, allow a taxonomy to be developed, supported by a [registry](https://spec.openapis.org/registry/tag-kind/index.html) of commonly supported values.

`kind` is useful because it allows tooling to selectively include and ignore Tags when parsing an OpenAPI description, as shown in the example below.

```yaml
tags:
  # Only used for rendering

  - name: products
    summary: Products
    description: All product operations
    kind: nav

  - name: books
    summary: Books & Literature
    description: Book catalog and recommendations
    parent: products
    kind: nav

  # Used for grouping Badge related operations in generated code

  - name: digital-delivery
    summary: Digital Delivery
    description: Instantly delivered digital products
    kind: badge
```

Tags can therefore be created for different purposes, making the structure of the Tag Object much more flexible.

As you migrate to v3.2.0, be sure to contribute to the Kind registry to share useful Tags across the community!

### HTTP Method Changes

v3.2.0 also includes a number of new features for more advanced HTTP method support.

Firstly, the new version offers built-in support for the `query` HTTP method. `query` provides support for safely querying the state of a resource in an idempotent way using a **query payload**. You can therefore define more complex query terms in your OpenAPI descriptions, with support from Schema Objects, with a separation from `post` methods that you might have used in the past for such operations.

Support for other HTTP methods that are not first-class citizens in OpenAPI is now provided by the `additionalOperations`. You can define a Map of HTTP methods you choose to include in your API design, and that can be processed by tooling, that are implemented as standard Operation Objects:

```yaml
paths:
  /:
    additionalOperations:
      connect:
        operationId:
          ## A standard Operation Object
```

The other major enhancement is the introduction of `querystring`, which provides the means to define all query parameters as a Schema Object, allowing for greater control in defining how query parameters are defined and coexist in a given API operation.

### Sequential and Streaming Data

A welcome addition in this version of OpenAPI is increased support for streaming data, which is a critical enhancement to support creating well-described APIs across so many use cases, including chat, AI, IoT, and financial services.

OpenAPI now supports the following types:

- **Server-Sent Events**: `text/event-stream`
- **JSON Lines**: `application/jsonl`
- **JSON Sequences**: `application/json-seq`
- **Multipart Mixed**: `multipart/mixed`

These types work in tandem with the `itemSchema` keyword, which defines what a streamed event looks like over the wire. The addition of this support is a significant enhancement for both understanding streaming APIs **and** for tooling makers who typically need to ingest many different data structures, represented by many Schema Objects, through a single Operation.

### New Security Features

There are also a number of new features in Security.

v3.2.0 introduces support for OAuth 2.0 Device Authorization Flow. [Device Authorization Flow](https://datatracker.ietf.org/doc/html/rfc8628) is an OAuth profile that supports End User authorization on limited input devices - think smart TVs and kiosks - and therefore requires a specialized flow to cater for handoff to an input device. Given the proliferation of such limited input devices providing support for Device Authorization Flow is a real boost for API Providers bringing their APIs to broadcasting platforms.

The core OAuth Flow object has also been enhanced to include the `oauth2MetadataUrl` property, which defines a URL at which [OAuth 2.0 Server Metadata](https://datatracker.ietf.org/doc/html/rfc8414) can be retrieved, supporting OAuth flows. Providing links to metadata, in the same way as the OpenID property `openIdConnectUrl` allows an OpenAPI description to be a key reference point for API Consumers, providing both functional and security information. Such reference points are particularly important in sectors like open finance, which rely heavily on publishing OAuth and OpenID Connect metadata for automatic discovery of services.

### Other Features

We've only covered some headline changes here, in an effort to bring together the most impactful changes in this release.

For more details please review:

- The Specification [page](https://spec.openapis.org/oas/v3.2.0.html) for v3.2.0.
- The [Release Notes](https://github.com/OAI/OpenAPI-Specification/releases/tag/3.2.0) on GitHub, which provides a headline list of all changes.
- Our Learn site, where you'll find a [migration guide](https://learn.openapis.org/upgrading/v3.1-to-v3.2.html).

As ever, our thanks and appreciation go to our great community members who worked so hard to bring this version together! Special thanks go to [Henry Andrews](https://github.com/handrews) and [Lorna Mitchell](https://www.linkedin.com/in/lornajane/) for their significant contributions to this effort!

Contributors: [Lorna Mitchell](https://www.linkedin.com/in/lornajane/), [Chris Wood](https://www.linkedin.com/in/sensiblewood/)
