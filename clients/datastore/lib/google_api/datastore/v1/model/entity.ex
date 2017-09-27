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

defmodule GoogleApi.Datastore.V1.Model.Entity do
  @moduledoc """
  A Datastore data object.  An entity is limited to 1 megabyte when stored. That _roughly_ corresponds to a limit of 1 megabyte for the serialized form of this message.

  ## Attributes

  - key (Key): The entity&#39;s key.  An entity must have a key, unless otherwise documented (for example, an entity in &#x60;Value.entity_value&#x60; may have no key). An entity&#39;s kind is its key path&#39;s last element&#39;s kind, or null if it has no key. Defaults to: `null`.
  - properties (Map[String, Value]): The entity&#39;s properties. The map&#39;s keys are property names. A property name matching regex &#x60;__.*__&#x60; is reserved. A reserved property name is forbidden in certain documented contexts. The name must not contain more than 500 characters. The name cannot be &#x60;\&quot;\&quot;&#x60;. Defaults to: `null`.
  """

  defstruct [
    :"key",
    :"properties"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.Entity do
  import GoogleApi.Datastore.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"key", :struct, GoogleApi.Datastore.V1.Model.Key, options)
    |> deserialize(:"properties", :map, GoogleApi.Datastore.V1.Model.Value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.Entity do
  def encode(value, options) do
    GoogleApi.Datastore.V1.Deserializer.serialize_non_nil(value, options)
  end
end

