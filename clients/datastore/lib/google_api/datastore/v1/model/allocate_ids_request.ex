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

defmodule GoogleApi.Datastore.V1.Model.AllocateIdsRequest do
  @moduledoc """
  The request for Datastore.AllocateIds.

  ## Attributes

  - keys (List[Key]): A list of keys with incomplete key paths for which to allocate IDs. No key may be reserved/read-only. Defaults to: `null`.
  """

  defstruct [
    :"keys"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Datastore.V1.Model.AllocateIdsRequest do
  import GoogleApi.Datastore.V1.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"keys", :list, GoogleApi.Datastore.V1.Model.Key, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Datastore.V1.Model.AllocateIdsRequest do
  def encode(value, options) do
    GoogleApi.Datastore.V1.Deserializer.serialize_non_nil(value, options)
  end
end

