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

defmodule GoogleApi.DisplayVideo.V1.Model.NegativeKeywordList do
  @moduledoc """
  A list of negative keywords used for targeting.

  ## Attributes

  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the advertiser the negative keyword list belongs to.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the negative keyword list. Must be UTF-8 encoded with a maximum size of 255 bytes.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the negative keyword list.
  *   `negativeKeywordListId` (*type:* `String.t`, *default:* `nil`) - Output only. The unique ID of the negative keyword list. Assigned by the system.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advertiserId => String.t(),
          :displayName => String.t(),
          :name => String.t(),
          :negativeKeywordListId => String.t()
        }

  field(:advertiserId)
  field(:displayName)
  field(:name)
  field(:negativeKeywordListId)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.NegativeKeywordList do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.NegativeKeywordList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.NegativeKeywordList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
