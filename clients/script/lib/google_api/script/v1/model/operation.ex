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

defmodule GoogleApi.Script.V1.Model.Operation do
  @moduledoc """
  A representation of an execution of an Apps Script function started with run. The execution response does not arrive until the function finishes executing. The maximum execution runtime is listed in the [Apps Script quotas guide](/apps-script/guides/services/quotas#current_limitations). After execution has started, it can have one of four outcomes: - If the script function returns successfully, the response field contains an ExecutionResponse object with the function's return value in the object's `result` field. - If the script function (or Apps Script itself) throws an exception, the error field contains a Status object. The `Status` object's `details` field contains an array with a single ExecutionError object that provides information about the nature of the error. - If the execution has not yet completed, the done field is `false` and the neither the `response` nor `error` fields are present. - If the `run` call itself fails (for example, because of a malformed request or an authorization error), the method returns an HTTP response code in the 4XX range with a different format for the response body. Client libraries automatically convert a 4XX response into an exception class. 

  ## Attributes

  *   `done` (*type:* `boolean()`, *default:* `nil`) - This field indicates whether the script execution has completed. A completed execution has a populated `response` field containing the ExecutionResponse from function that was executed.
  *   `error` (*type:* `GoogleApi.Script.V1.Model.Status.t`, *default:* `nil`) - If a `run` call succeeds but the script function (or Apps Script itself) throws an exception, this field contains a Status object. The `Status` object's `details` field contains an array with a single ExecutionError object that provides information about the nature of the error.
  *   `response` (*type:* `map()`, *default:* `nil`) - If the script function returns successfully, this field contains an ExecutionResponse object with the function's return value.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :done => boolean() | nil,
          :error => GoogleApi.Script.V1.Model.Status.t() | nil,
          :response => map() | nil
        }

  field(:done)
  field(:error, as: GoogleApi.Script.V1.Model.Status)
  field(:response, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Script.V1.Model.Operation do
  def decode(value, options) do
    GoogleApi.Script.V1.Model.Operation.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Script.V1.Model.Operation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
