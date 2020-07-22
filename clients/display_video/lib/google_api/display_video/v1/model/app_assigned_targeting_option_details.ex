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

defmodule GoogleApi.DisplayVideo.V1.Model.AppAssignedTargetingOptionDetails do
  @moduledoc """
  Details for assigned app targeting option. This will be populated in the details field of an AssignedTargetingOption when targeting_type is `TARGETING_TYPE_APP`.

  ## Attributes

  *   `appId` (*type:* `String.t`, *default:* `nil`) - Required. The ID of the app. Android's Play store app uses bundle ID, for example `com.google.android.gm`. Apple's App store app ID uses 9 digit string, for example `422689480`.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Output only. The display name of the app.
  *   `negative` (*type:* `boolean()`, *default:* `nil`) - Indicates if this option is being negatively targeted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appId => String.t(),
          :displayName => String.t(),
          :negative => boolean()
        }

  field(:appId)
  field(:displayName)
  field(:negative)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.AppAssignedTargetingOptionDetails do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.AppAssignedTargetingOptionDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.AppAssignedTargetingOptionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
