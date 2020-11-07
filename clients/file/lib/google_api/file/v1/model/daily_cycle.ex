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

defmodule GoogleApi.File.V1.Model.DailyCycle do
  @moduledoc """
  Time window specified for daily operations.

  ## Attributes

  *   `duration` (*type:* `String.t`, *default:* `nil`) - Output only. Duration of the time window, set by service producer.
  *   `startTime` (*type:* `GoogleApi.File.V1.Model.TimeOfDay.t`, *default:* `nil`) - Time within the day to start the operations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duration => String.t(),
          :startTime => GoogleApi.File.V1.Model.TimeOfDay.t()
        }

  field(:duration)
  field(:startTime, as: GoogleApi.File.V1.Model.TimeOfDay)
end

defimpl Poison.Decoder, for: GoogleApi.File.V1.Model.DailyCycle do
  def decode(value, options) do
    GoogleApi.File.V1.Model.DailyCycle.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.File.V1.Model.DailyCycle do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
