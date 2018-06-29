# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.DNS.V1.Model.ManagedZone do
  @moduledoc """
  A zone is a subtree of the DNS namespace under one administrative responsibility. A ManagedZone is a resource that represents a DNS zone hosted by the Cloud DNS service.

  ## Attributes

  - creationTime (String.t): The time that this resource was created on the server. This is in RFC3339 text format. Output only. Defaults to: `null`.
  - description (String.t): A mutable string of at most 1024 characters associated with this resource for the user&#39;s convenience. Has no effect on the managed zone&#39;s function. Defaults to: `null`.
  - dnsName (String.t): The DNS name of this managed zone, for instance \&quot;example.com.\&quot;. Defaults to: `null`.
  - dnssecConfig (ManagedZoneDnsSecConfig): DNSSEC configuration. Defaults to: `null`.
  - id (String.t): Unique identifier for the resource; defined by the server (output only) Defaults to: `null`.
  - kind (String.t): Identifies what kind of resource this is. Value: the fixed string \&quot;dns#managedZone\&quot;. Defaults to: `null`.
  - labels (%{optional(String.t) &#x3D;&gt; String.t}): User labels. Defaults to: `null`.
  - name (String.t): User assigned name for this resource. Must be unique within the project. The name must be 1-63 characters long, must begin with a letter, end with a letter or digit, and only contain lowercase letters, digits or dashes. Defaults to: `null`.
  - nameServerSet (String.t): Optionally specifies the NameServerSet for this ManagedZone. A NameServerSet is a set of DNS name servers that all host the same ManagedZones. Most users will leave this field unset. Defaults to: `null`.
  - nameServers ([String.t]): Delegate your managed_zone to these virtual name servers; defined by the server (output only) Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTime => any(),
          :description => any(),
          :dnsName => any(),
          :dnssecConfig => GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig.t(),
          :id => any(),
          :kind => any(),
          :labels => map(),
          :name => any(),
          :nameServerSet => any(),
          :nameServers => list(any())
        }

  field(:creationTime)
  field(:description)
  field(:dnsName)
  field(:dnssecConfig, as: GoogleApi.DNS.V1.Model.ManagedZoneDnsSecConfig)
  field(:id)
  field(:kind)
  field(:labels, type: :map)
  field(:name)
  field(:nameServerSet)
  field(:nameServers, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DNS.V1.Model.ManagedZone do
  def decode(value, options) do
    GoogleApi.DNS.V1.Model.ManagedZone.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DNS.V1.Model.ManagedZone do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
