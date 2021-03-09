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

defmodule GoogleApi.Script.V1.Model.ExecuteStreamResponse do
  @moduledoc """
  The response for executing or debugging a function in an Apps Script project.

  ## Attributes

  *   `result` (*type:* `GoogleApi.Script.V1.Model.ScriptExecutionResult.t`, *default:* `nil`) - The result of the execution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :result => GoogleApi.Script.V1.Model.ScriptExecutionResult.t() | nil
        }

  field(:result, as: GoogleApi.Script.V1.Model.ScriptExecutionResult)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.ExecuteStreamResponse do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.ExecuteStreamResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.ExecuteStreamResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
