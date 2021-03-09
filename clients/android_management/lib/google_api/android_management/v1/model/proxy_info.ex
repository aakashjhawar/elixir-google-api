# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AndroidManagement.V1.Model.ProxyInfo do
  @moduledoc """
  Configuration info for an HTTP proxy. For a direct proxy, set the host, port, and excluded_hosts fields. For a PAC script proxy, set the pac_uri field.

  ## Attributes

  *   `excludedHosts` (*type:* `list(String.t)`, *default:* `nil`) - For a direct proxy, the hosts for which the proxy is bypassed. The host names may contain wildcards such as *.example.com.
  *   `host` (*type:* `String.t`, *default:* `nil`) - The host of the direct proxy.
  *   `pacUri` (*type:* `String.t`, *default:* `nil`) - The URI of the PAC script used to configure the proxy.
  *   `port` (*type:* `integer()`, *default:* `nil`) - The port of the direct proxy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :excludedHosts => list(String.t()) | nil,
          :host => String.t() | nil,
          :pacUri => String.t() | nil,
          :port => integer() | nil
        }

  field(:excludedHosts, type: :list)
  field(:host)
  field(:pacUri)
  field(:port)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.ProxyInfo do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.ProxyInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.ProxyInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
