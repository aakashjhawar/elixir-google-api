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

defmodule GoogleApi.AndroidManagement.V1.Model.WebToken do
  @moduledoc """
  A web token used to access the managed Google Play iframe.

  ## Attributes

  *   `enabledFeatures` (*type:* `list(String.t)`, *default:* `nil`) - The features to enable. Use this if you want to control exactly which feature(s) will be activated; leave empty to allow all features.Restrictions / things to note: - If no features are listed here, all features are enabled — this is the default behavior where you give access to all features to your admins. - This must not contain any FEATURE_UNSPECIFIED values. - Repeated values are ignored 
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the web token, which is generated by the server during creation in the form enterprises/{enterpriseId}/webTokens/{webTokenId}.
  *   `parentFrameUrl` (*type:* `String.t`, *default:* `nil`) - The URL of the parent frame hosting the iframe with the embedded UI. To prevent XSS, the iframe may not be hosted at other URLs. The URL must use the https scheme.
  *   `permissions` (*type:* `list(String.t)`, *default:* `nil`) - Permissions available to an admin in the embedded UI. An admin must have all of these permissions in order to view the UI. This field is deprecated.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The token value which is used in the hosting page to generate the iframe with the embedded UI. This is a read-only field generated by the server.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :enabledFeatures => list(String.t()) | nil,
          :name => String.t() | nil,
          :parentFrameUrl => String.t() | nil,
          :permissions => list(String.t()) | nil,
          :value => String.t() | nil
        }

  field(:enabledFeatures, type: :list)
  field(:name)
  field(:parentFrameUrl)
  field(:permissions, type: :list)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidManagement.V1.Model.WebToken do
  def decode(value, options) do
    GoogleApi.AndroidManagement.V1.Model.WebToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidManagement.V1.Model.WebToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
