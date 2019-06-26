# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.CivicInfo.V2.Model.MessageSet do
  @moduledoc """


  ## Attributes

  *   `recordMessageSetExt` (*type:* `GoogleApi.CivicInfo.V2.Model.LivegraphBacktraceRecordInfo.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :recordMessageSetExt => GoogleApi.CivicInfo.V2.Model.LivegraphBacktraceRecordInfo.t()
        }

  field(:recordMessageSetExt, as: GoogleApi.CivicInfo.V2.Model.LivegraphBacktraceRecordInfo)
end

defimpl Poison.Decoder, for: GoogleApi.CivicInfo.V2.Model.MessageSet do
  def decode(value, options) do
    GoogleApi.CivicInfo.V2.Model.MessageSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CivicInfo.V2.Model.MessageSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
