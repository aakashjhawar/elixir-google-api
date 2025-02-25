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

defmodule GoogleApi.CloudSearch.V1.Model.MessageInfo do
  @moduledoc """


  ## Attributes

  *   `message` (*type:* `GoogleApi.CloudSearch.V1.Model.Message.t`, *default:* `nil`) - The content of a matching message.
  *   `searcherMembershipState` (*type:* `String.t`, *default:* `nil`) - Searcher's membership state in the space where the message is posted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :message => GoogleApi.CloudSearch.V1.Model.Message.t() | nil,
          :searcherMembershipState => String.t() | nil
        }

  field(:message, as: GoogleApi.CloudSearch.V1.Model.Message)
  field(:searcherMembershipState)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.MessageInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.MessageInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.MessageInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
